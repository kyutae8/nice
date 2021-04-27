package site.nicezo.service;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.nicezo.dao.MemberDAO;
import site.nicezo.dto.Member;
import site.nicezo.exception.AdminAuthFailException;
import site.nicezo.exception.LoginAuthFailException;
import site.nicezo.exception.MemberExistsException;
import site.nicezo.exception.MemberNotFoundException;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) throws MemberExistsException {
		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberExistsException(member, "�̹� ������� ���̵��Դϴ�.");
		}
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		
		memberDAO.insertMember(member);
	}
	

	@Transactional
	@Override
	public void addAdmin(Member member) throws MemberExistsException {
		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberExistsException(member, "�̹� ������� ���̵��Դϴ�.");
		}
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		
		memberDAO.insertAdmin(member);
		
		
	}
	
	
	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("���̵��� ȸ�������� �������� �ʽ��ϴ�.");
		}
		
		String password=member.getPassword();
		if(password!=null && !password.equals("")) {
			member.setPassword(BCrypt.hashpw(password, BCrypt.gensalt()));			
		}
		
		memberDAO.updateMember(member);
	}
	@Transactional
	@Override
	public void modifyMemberAdmin(Member member) throws MemberNotFoundException {
		memberDAO.updateMemberAdmin(member);
	}
	
	@Transactional
	@Override
	public void deleteMember(String id) throws MemberNotFoundException {
		if(memberDAO.selectMember(id)==null) {
			throw new MemberNotFoundException("���̵��� ȸ�������� �������� �ʽ��ϴ�.");
		}
		memberDAO.deleteMember(id);		
	}

	@Override
	public Member getMember(String id) throws MemberNotFoundException {
		Member member=memberDAO.selectMember(id);
		if(member==null) {
			throw new MemberNotFoundException("���̵��� ȸ�������� �������� �ʽ��ϴ�.");
		}
		return member;
	}

	@Override
	public List<Member> getMemberList(Map<String, Object> map) {
		return memberDAO.selectMemberList(map);
	}

	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {
		Member authMember=memberDAO.selectMember(member.getId());
		if(authMember==null) {//���̵� �˻�
			throw new LoginAuthFailException("���̵��� ȸ�������� �������� �ʽ��ϴ�.", member.getId());
		}
		
		if(authMember.getStatus()==5) {//���̵� �˻�
			throw new LoginAuthFailException("Ż���� ȸ���� �����Դϴ�.", member.getId());
		}
		
		//��й�ȣ �˻�
		if(!BCrypt.checkpw(member.getPassword(), authMember.getPassword())) {
			throw new LoginAuthFailException("���̵� ���ų� ��й�ȣ�� Ʋ�Ƚ��ϴ�.", member.getId());
		}
	}
	
	@Override
	public void adminAuth(Member member) throws AdminAuthFailException {
		Member adminAuthMember=memberDAO.selectMember(member.getId());
		if(adminAuthMember.getStatus()!=9) {
			throw new AdminAuthFailException("������ ���̵� �ƴմϴ�..", member.getId());
		}
	}

	@Override
	public int getMemberCount() {
		return memberDAO.getMemberCount();
	}

	
	//���̵� ã��
	@Override
	public Member findId(Member member) throws MemberNotFoundException {
		return memberDAO.findId(member);
	}

	//��й�ȣ ã��
	@Transactional
	@Override
	public int findPw(Member member) throws MemberNotFoundException {
		return memberDAO.findPw(member);
	}





	


	
	

	
	


	









}
