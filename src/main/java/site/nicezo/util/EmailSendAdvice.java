package site.nicezo.util;

import org.aspectj.lang.JoinPoint;


public class EmailSendAdvice {
	public void beforeLog(JoinPoint joinPoint) {
		String email=(String)joinPoint.getArgs()[0];
		String subject=(String)joinPoint.getArgs()[1];
		System.out.println("[메세지]<"+email+">님에게 <"+subject+"> 제목의 이메일을 전송합니다.");
	}
	
	public void successLog(String email) {
		System.out.println("[메세지]<"+email+">님에게 이메일을 성공적으로 전송 하였습니다.");
	}
	
	public void failLog(Exception exception) {
		System.out.println("[에러]이메일 전송 실패 = "+exception.getMessage());
	}
}
