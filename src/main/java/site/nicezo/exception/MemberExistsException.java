package site.nicezo.exception;

import site.nicezo.dto.Member;

//회원등록시 예외클래스
public class MemberExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Member member;
	
	public MemberExistsException() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberExistsException(Member member, String message) {
		super(message);
		this.member=member;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	
	

}
