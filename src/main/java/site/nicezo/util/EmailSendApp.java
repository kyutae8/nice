package site.nicezo.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EmailSendApp {
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
		EmailSendBean bean=context.getBean("emailSendBean", EmailSendBean.class);
		
		bean.sendEmail("sungwon9204@naver.com", "���������׽�Ʈ", "�׽�Ʈ", "�Ѽ���Ʈ��Ŭ�� <hansung181818@gmail.com>");
		((ClassPathXmlApplicationContext)context).close();
	}
}
