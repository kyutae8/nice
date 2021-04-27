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
			throw new MemberExistsException(member, "이미 사용중인 아이디입니다.");
		}
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		
		memberDAO.insertMember(member);
	}
	

	@Transactional
	@Override
	public void addAdmin(Member member) throws MemberExistsException {
		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberExistsException(member, "이미 사용중인 아이디입니다.");
		}
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		
		memberDAO.insertAdmin(member);
		
		
	}
	
	
	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
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
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		memberDAO.deleteMember(id);		
	}

	@Override
	public Member getMember(String id) throws MemberNotFoundException {
		Member member=memberDAO.selectMember(id);
		if(member==null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
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
		if(authMember==null) {//아이디 검사
			throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다.", member.getId());
		}
		
		if(authMember.getStatus()==5) {//아이디 검사
			throw new LoginAuthFailException("탈퇴한 회원의 계정입니다.", member.getId());
		}
		
		//비밀번호 검사
		if(!BCrypt.checkpw(member.getPassword(), authMember.getPassword())) {
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 틀렸습니다.", member.getId());
		}
	}
	
	@Override
	public void adminAuth(Member member) throws AdminAuthFailException {
		Member adminAuthMember=memberDAO.selectMember(member.getId());
		if(adminAuthMember.getStatus()!=9) {
			throw new AdminAuthFailException("관리자 아이디가 아닙니다..", member.getId());
		}
	}

	@Override
	public int getMemberCount() {
		return memberDAO.getMemberCount();
	}

	
	//아이디 찾기
	@Override
	public Member findId(Member member) throws MemberNotFoundException {
		return memberDAO.findId(member);
	}

	//비밀번호 찾기
	@Transactional
	@Override
	public int findPw(Member member) throws MemberNotFoundException {
		return memberDAO.findPw(member);
	}





	


	
	

	
	


	









}
