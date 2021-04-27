package site.nicezo.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EmailSendApp {
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
		EmailSendBean bean=context.getBean("emailSendBean", EmailSendBean.class);
		
		bean.sendEmail("sungwon9204@naver.com", "메일전송테스트", "테스트", "한성컨트리클럽 <hansung181818@gmail.com>");
		((ClassPathXmlApplicationContext)context).close();
	}
}
