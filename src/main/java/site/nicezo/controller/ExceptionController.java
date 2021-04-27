package site.nicezo.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

//@ControllerAdvice : ���� ó�� �޼ҵ常 ����� ��Ʈ�ѷ� Ŭ�������� ����ϴ� ������̼�
// => ��� ��Ʈ�ѷ� Ŭ������ ��û ó�� �޼ҵ忡�� �߻��Ǵ� ���ܿ� ó�� ó�� ����

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public String execeptionHandler(Exception exception) {
		exception.printStackTrace();
		return "member/error";
	}
}
