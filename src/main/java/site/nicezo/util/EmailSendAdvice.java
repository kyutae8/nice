package site.nicezo.util;

import org.aspectj.lang.JoinPoint;


public class EmailSendAdvice {
	public void beforeLog(JoinPoint joinPoint) {
		String email=(String)joinPoint.getArgs()[0];
		String subject=(String)joinPoint.getArgs()[1];
		System.out.println("[�޼���]<"+email+">�Կ��� <"+subject+"> ������ �̸����� �����մϴ�.");
	}
	
	public void successLog(String email) {
		System.out.println("[�޼���]<"+email+">�Կ��� �̸����� ���������� ���� �Ͽ����ϴ�.");
	}
	
	public void failLog(Exception exception) {
		System.out.println("[����]�̸��� ���� ���� = "+exception.getMessage());
	}
}
