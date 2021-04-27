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
	
	//예외처리
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
	
	
	//로그인
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
	
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	//회원가입
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
	
	//마이페이지
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
	
	//회원탈퇴
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
			ScriptUtils.alertAndMovePage(response, "회원탈퇴가 정상적으로 처리되었습니다.", "/logout", request);
		}
		model.addAttribute("message", "회원정보의 비밀번호와 맞지 않습니다.");
		return "member/delete";
	}
	
	//아이디/비번 찾기 요청
	@RequestMapping(value = "/idpass", method = RequestMethod.GET )
	public String idpass(Model model) {
		
		return "member/idpass";
	}
	
	//아이디찾기
	@RequestMapping(value = "/idpass", method = RequestMethod.POST )
	public String findid(Member member, Model model) throws MemberNotFoundException {
		Member member2=memberService.findId(member);
		if (member2 == null) {
			model.addAttribute("msg","조건에 맞는 회원정보가 없습니다. 다시 입력해주세요.");
			return "member/idpass";
		}
		model.addAttribute("name",member2.getName());
		model.addAttribute("id",member2.getId());
		return "member/popup";
	}
	
	//비밀번호 찾기
	@RequestMapping(value = "/idpasspw", method = RequestMethod.POST)
	public String findpw(@ModelAttribute Member member, HttpSession session, HttpServletResponse response
			, HttpServletRequest request) throws IOException, MemberNotFoundException {
		member.setPassword(math_random.getTempPassword(10));
		String newpw=member.getPassword();
		String name=member.getName();
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		int check=memberService.findPw(member);
		if(check==0) {
			ScriptUtils.alertAndMovePage(response, "존재하지 않는 회원정보입니다. 다시 입력해주세요.", "/idpass", request);
		} else {
			
			ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
			EmailSendBean bean=context.getBean("emailSendBean", EmailSendBean.class);
			
			bean.sendEmail(member.getEmail(), "한성컨트리클럽 "+name+" 님의 임시비밀번호가 발급되었습니다.",
					"<h2>안녕하세요 "+ name +" 님</h2><br><br>"
					+ "<p>임시로 발급 드린 비밀번호는 <h2 style='color : blue'>"+ newpw +" 입니다.</h2><br>로그인 후 마이페이지에서 비밀번호를 변경해주십시오.</p><br>"
					+ "<h3>한성컨트리클럽 <a href='http://www.itwill.xyz/"+request.getContextPath()+"/login'>홈페이지 접속</a></h3><br><br>"
					+ "<p>(혹시 "+name+ "님이 아니시라면 이메일을 무시하셔도 됩니다)</p>", "한성컨트리클럽 <hansung181818@gmail.com>");
			((ClassPathXmlApplicationContext)context).close();
			ScriptUtils.alertAndMovePage(response, "임시비밀번호가 이메일로 전송되었습니다. \\n회원정보수정에서 비밀번호를 변경해주세요.", "/login", request);
		}
		return "/login";
	}
}





























