package site.nicezo.exception;

//�α��� ���� ���� ���� Ŭ����
public class AdminAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	public AdminAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public AdminAuthFailException(String message, String id) {
		super(message);
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
