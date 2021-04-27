package site.nicezo.service;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Member;
import site.nicezo.exception.AdminAuthFailException;
import site.nicezo.exception.LoginAuthFailException;
import site.nicezo.exception.MemberExistsException;
import site.nicezo.exception.MemberNotFoundException;

public interface MemberService {
	void addMember(Member member) throws MemberExistsException;
	void addAdmin(Member member) throws MemberExistsException;
	void modifyMember(Member member) throws MemberNotFoundException;
	void modifyMemberAdmin(Member member) throws MemberNotFoundException;
	void deleteMember(String id) throws MemberNotFoundException;
	Member getMember(String id) throws MemberNotFoundException;
	List<Member> getMemberList(Map<String, Object> map);
	void loginAuth(Member member) throws LoginAuthFailException;
	void adminAuth(Member member) throws AdminAuthFailException;
	int getMemberCount();
	Member findId(Member member) throws MemberNotFoundException;
	int findPw(Member member) throws MemberNotFoundException;

}
