package site.nicezo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.nicezo.dto.Member;
import site.nicezo.exception.LoginAuthFailException;
import site.nicezo.exception.MemberExistsException;
import site.nicezo.exception.MemberNotFoundException;
import site.nicezo.service.MemberService;
import site.nicezo.util.EmailSendBean;
import site.nicezo.util.ScriptUtils;
import site.nicezo.util.math_random;

@Controller
public class MemberController {
	@Autowired	
	private MemberService memberService;
	
	//����ó��
	@ExceptionHandler(MemberExistsException.class)
	public String execeptionHandler(MemberExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "member/join02";
	}
	
	@ExceptionHandler(LoginAuthFailException.class)
	public String execeptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getId());
		return "member/login";
	}
	
	
	//�α���
	@RequestMapping(value = "/login", method = RequestMethod.GET )
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, HttpSession session) throws LoginAuthFailException, MemberNotFoundException {
		//System.out.println("member = "+member.getPassword());
		memberService.loginAuth(member);
		session.setAttribute("loginMember", memberService.getMember(member.getId()));
		return "redirect:/main";
	}
	
	
	//�α׾ƿ�
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	//ȸ������
	@RequestMapping("/join01")
	public String join01() {
		return "member/join01";
	}
	
	@RequestMapping(value = "/join02", method = RequestMethod.GET)
	public String join02() {
		return "member/join02";
	}
	
	@RequestMapping(value = "/join02", method = RequestMethod.POST)
	public String join02(@ModelAttribute Member member, @RequestParam String phone1, @RequestParam String phone2) throws MemberExistsException {
		member.setPhone(member.getPhone()+"-"+phone1+"-"+phone2);
		
		memberService.addMember(member);
		return "member/join_ok";
	}
	
	//����������
	@RequestMapping(value = "/mypage", method = RequestMethod.GET )
	public String mypage() {
		return "member/mypage";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String mypage(@ModelAttribute Member member, HttpSession session) throws MemberNotFoundException {
		memberService.modifyMember(member);
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember.getId().equals(member.getId())) {
			session.setAttribute("loginMember", memberService.getMember(member.getId()));
		}
		return "member/modify_ok";
	}
	
	//ȸ��Ż��
	@RequestMapping(value = "/delete", method = RequestMethod.GET )
	public String delete() {
		return "member/delete";
	}
	

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam String id, @RequestParam String password, HttpSession session, Model model,
			HttpServletResponse response, HttpServletRequest request) throws MemberNotFoundException, IOException {
		Member member =(Member)session.getAttribute("loginMember");
		if(BCrypt.checkpw(password, member.getPassword())) {
			memberService.deleteMember(id);
			ScriptUtils.alertAndMovePage(response, "ȸ��Ż�� ���������� ó���Ǿ����ϴ�.", "/logout", request);
		}
		model.addAttribute("message", "ȸ�������� ��й�ȣ�� ���� �ʽ��ϴ�.");
		return "member/delete";
	}
	
	//���̵�/��� ã�� ��û
	@RequestMapping(value = "/idpass", method = RequestMethod.GET )
	public String idpass(Model model) {
		
		return "member/idpass";
	}
	
	//���̵�ã��
	@RequestMapping(value = "/idpass", method = RequestMethod.POST )
	public String findid(Member member, Model model) throws MemberNotFoundException {
		Member member2=memberService.findId(member);
		if (member2 == null) {
			model.addAttribute("msg","���ǿ� �´� ȸ�������� �����ϴ�. �ٽ� �Է����ּ���.");
			return "member/idpass";
		}
		model.addAttribute("name",member2.getName());
		model.addAttribute("id",member2.getId());
		return "member/popup";
	}
	
	//��й�ȣ ã��
	@RequestMapping(value = "/idpasspw", method = RequestMethod.POST)
	public String findpw(@ModelAttribute Member member, HttpSession session, HttpServletResponse response
			, HttpServletRequest request) throws IOException, MemberNotFoundException {
		member.setPassword(math_random.getTempPassword(10));
		String newpw=member.getPassword();
		String name=member.getName();
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		int check=memberService.findPw(member);
		if(check==0) {
			ScriptUtils.alertAndMovePage(response, "�������� �ʴ� ȸ�������Դϴ�. �ٽ� �Է����ּ���.", "/idpass", request);
		} else {
			
			ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
			EmailSendBean bean=context.getBean("emailSendBean", EmailSendBean.class);
			
			bean.sendEmail(member.getEmail(), "�Ѽ���Ʈ��Ŭ�� "+name+" ���� �ӽú�й�ȣ�� �߱޵Ǿ����ϴ�.",
					"<h2>�ȳ��ϼ��� "+ name +" ��</h2><br><br>"
					+ "<p>�ӽ÷� �߱� �帰 ��й�ȣ�� <h2 style='color : blue'>"+ newpw +" �Դϴ�.</h2><br>�α��� �� �������������� ��й�ȣ�� �������ֽʽÿ�.</p><br>"
					+ "<h3>�Ѽ���Ʈ��Ŭ�� <a href='http://www.itwill.xyz/"+request.getContextPath()+"/login'>Ȩ������ ����</a></h3><br><br>"
					+ "<p>(Ȥ�� "+name+ "���� �ƴϽö�� �̸����� �����ϼŵ� �˴ϴ�)</p>", "�Ѽ���Ʈ��Ŭ�� <hansung181818@gmail.com>");
			((ClassPathXmlApplicationContext)context).close();
			ScriptUtils.alertAndMovePage(response, "�ӽú�й�ȣ�� �̸��Ϸ� ���۵Ǿ����ϴ�. \\nȸ�������������� ��й�ȣ�� �������ּ���.", "/login", request);
		}
		return "/login";
	}
}





























