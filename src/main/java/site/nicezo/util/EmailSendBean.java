package site.nicezo.util;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;

public class EmailSendBean {
	private JavaMailSender mailSender;
	
	public JavaMailSender getMailSender() {
		return mailSender;
	}
	
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public String sendEmail(String email, String subject, String content, String from) {
		MimeMessage message=mailSender.createMimeMessage();
		
		try {
			message.setSubject(subject);
			
			message.setContent(content, "text/html; charset=UTF-8");
			
			message.setFrom(from);
			
			message.setRecipients(RecipientType.TO, InternetAddress.parse(email));
			
			mailSender.send(message);	
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return email;
	}
}
