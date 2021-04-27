package site.nicezo.exception;

//회원정보의 변경,삭제,검색시 회원정보가 존재하지 않을시 동작되는 예외클래스
public class MemberNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public MemberNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberNotFoundException(String message) {
		super(message);
	}

}
