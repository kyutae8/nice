package site.nicezo.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.HtmlUtils;

import site.nicezo.dto.Board;
import site.nicezo.dto.CourseGallery;
import site.nicezo.dto.Hole;
import site.nicezo.dto.Member;
import site.nicezo.dto.Reservation;
import site.nicezo.exception.AdminAuthFailException;
import site.nicezo.exception.MemberExistsException;
import site.nicezo.exception.MemberNotFoundException;
import site.nicezo.service.BoardService;
import site.nicezo.service.CourseService;
import site.nicezo.service.HoleService;
import site.nicezo.service.MemberService;
import site.nicezo.service.ReservationService;
import site.nicezo.util.Pager;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private HoleService holeService;
	@Autowired
	private ReservationService reservationService;
	
	@ExceptionHandler(AdminAuthFailException.class)
	public String exceptionHandler(AdminAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getId());
		return "redirect:/member/login";
	}
	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String admin(@ModelAttribute Member member, Model model, @RequestParam(defaultValue = "Orange") String resCosname
			,@RequestParam(defaultValue = "08~10") String resPlaytime, HttpSession session) throws AdminAuthFailException, MemberNotFoundException {
		model.addAttribute("totalMember", memberService.getMemberCount());
		model.addAttribute("totalRes", reservationService.getResCount());
		model.addAttribute("totalRescosO", reservationService.getRescosCount("Orange"));
		model.addAttribute("totalRescosB", reservationService.getRescosCount("Blue"));
		model.addAttribute("totalRescosG", reservationService.getRescosCount("Green"));
		model.addAttribute("totalResplay1", reservationService.getResplayCount("08~10"));
		model.addAttribute("totalResplay2", reservationService.getResplayCount("10~12"));
		model.addAttribute("totalResplay3", reservationService.getResplayCount("12~14"));
		model.addAttribute("totalResplay4", reservationService.getResplayCount("14~16"));
		model.addAttribute("totalResplay5", reservationService.getResplayCount("16~18"));
		return "admin/main";
	}

	@RequestMapping("/member")
	public String adminMember() {
		return "admin/member";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	
	/************** 회원관리 ***************/
	@RequestMapping(value = "/member_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> memberList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		int totalMember=memberService.getMemberCount();
		int pageSize=10;
		int blockSize=10;
		Pager pager=new Pager(pageNum, totalMember, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());

		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Member> memberList = memberService.getMemberList(pagerMap);
		for(Member member : memberList) {
			member.setJoindate(member.getJoindate().substring(0,19));
		}
		returnMap.put("memberList", memberList);
		returnMap.put("pager", pager);
		model.addAttribute("memberList", memberService.getMemberList(null));
		
		return returnMap;
	}
	
	
	//회원등록
	@RequestMapping(value = "/member_add", method = RequestMethod.GET)
	public String add() {
		return "admin/member_add";
	}
	
	@RequestMapping(value = "/member_add", method = RequestMethod.POST)
	public String add(@ModelAttribute Member member) throws MemberExistsException {
		memberService.addAdmin(member);
		return "admin/member";
	}
	
	@RequestMapping("/view")
	public String view(@RequestParam String id, Model model) throws MemberNotFoundException {
		model.addAttribute("member", memberService.getMember(id));
		return "admin/member_view";
	}
	
	//회원정보 변경
	@RequestMapping(value = "/member_modify", method = RequestMethod.GET)
	public String modify(@RequestParam String id, Model model) throws MemberNotFoundException  {
		model.addAttribute("member", memberService.getMember(id));
		return "admin/member_modify";
	}
	
	@RequestMapping(value = "/member_modify", method = RequestMethod.POST)
	public String modify(@ModelAttribute Member member, Model model) throws MemberNotFoundException  {
		memberService.modifyMember(member);
		memberService.getMember(member.getId());
		return "admin/member";

	}
	
	
	
	/************** 게시글 관리 ***************/
	@RequestMapping("/notice")
	public String adminNotice() {
		return "admin/notice";
	}
	@RequestMapping("/qna")
	public String adminQna() {
		return "admin/qna";
	}
	@RequestMapping("/event")
	public String adminEvent() {
		return "admin/event";
	}
	
	@RequestMapping(value = "/board_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> boardList(@RequestParam(defaultValue="1")  int pageNum,
			@RequestParam(defaultValue="1") int category, Model model) {
		int totalBoard=boardService.getBoardCount(category);
		System.out.println(category);
		System.out.println(totalBoard);
		int pageSize=10;
		int blockSize=10;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("category", category);

		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Board> boardList = boardService.getBoardList(pagerMap);
		for(Board board : boardList) {
			board.setRegdate(board.getRegdate().substring(0,19));
		}
		returnMap.put("boardList", boardList);
		returnMap.put("pager", pager);
		model.addAttribute("boardList", boardService.getBoardList(returnMap));

		return returnMap;
	}
	
	@RequestMapping("/board_add")
	public String boardAdd() {
		return "admin/board_add";
	}
	
	@RequestMapping(value = "/board_add", method = RequestMethod.POST)
	public String boardAdd(@ModelAttribute Board board,HttpServletRequest request) throws IllegalStateException, IOException {
		int category=Integer.parseInt(request.getParameter("category"));
		if(board.getFile()==null) {
			boardService.addBoard(board);
			if(category==1) return "admin/notice";
			if(category==2) return "admin/qna";
			if(category==3) return "admin/event";
		}
		
		String uploadDir = context.getServletContext().getRealPath("/resources/b_image");
		
		String upload = System.currentTimeMillis()+board.getFile().getOriginalFilename();
		
		board.getFile().transferTo(new File(uploadDir, upload));
		
		board.setImage(upload);
		
		board.setContent(HtmlUtils.htmlEscape(board.getContent()));
		boardService.addBoard(board);
		return "admin/notice";
	}
	
	@RequestMapping(value = "/board_view/{num}", method = RequestMethod.GET)
	public String boardView(@PathVariable int num, Model model) {
		model.addAttribute("board", boardService.getBoard(num));
		return "admin/board_view";
	}
	
	@RequestMapping(value = "/board_modify/{num}", method = RequestMethod.GET)
	public String boardModify(@PathVariable int num, Model model) {
		model.addAttribute("board", boardService.getBoard(num));
		return "admin/board_modify";
	}
	
	@RequestMapping(value = "/board_modify/{num}", method = RequestMethod.POST)
	public String boardUpdate(@ModelAttribute Board board,@PathVariable int num) {
		boardService.modifyBoard(board);
		return "admin/notice";
	}
	@RequestMapping(value = "/board_remove/{num}", method = RequestMethod.DELETE)
	@ResponseBody
	public String boardRemove(@PathVariable int num, @ModelAttribute Board board) {
		boardService.getBoard(num);
		String uploadDir=context.getServletContext().getRealPath("/resources/b_image");
		String upload = System.currentTimeMillis()+board.getFile().getOriginalFilename();

		new File(uploadDir, upload).delete();//파일 삭제
		boardService.removeBoard(num);
		return "redirect:/admin/notice";
	}

	/************** 예약 관련 ***************/
	@RequestMapping("/res")
	public String adminRes() {
		return "admin/res";
	}
	
	@RequestMapping(value = "/res_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> resList(@RequestParam(defaultValue = "1") int pageNum,Model model
			,@RequestParam(defaultValue = "abc123") String id) {
		int totalBoard=reservationService.getResCount();
//		System.out.println(category.length());
		model.addAttribute("memberPhone", reservationService.getResMemberList(id));
		System.out.println(totalBoard);
		int pageSize=10;
		int blockSize=10;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());

		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Reservation> resList = reservationService.getRes();
		for(Reservation reservation : resList) {
			reservation.setResMydate(reservation.getResMydate().substring(0, 11));
			reservation.setResResdate(reservation.getResResdate().substring(0, 11));
		}
		returnMap.put("resList", resList);
		returnMap.put("pager", pager);
		model.addAttribute("resList", reservationService.getResList());

		return returnMap;
	}
	
	@RequestMapping("/rescancel")
	public String rescancel(Model model, HttpServletRequest request
			, @RequestParam(defaultValue = "20") int resCancel
			, @RequestParam(defaultValue = "1") int resCode) {
		reservationService.cancelRess(resCode);
		model.addAttribute("resCancel", resCancel);
		return "admin/res";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET )
	public String delete() {
		return "admin/res";
	}
	
	
	@RequestMapping( value="/res_netres",method=RequestMethod.GET)
	public String adminResn(Model model
			,String resDate) {
		List<Reservation> resList = reservationService.getRes();
		model.addAttribute("resList", resList);
		model.addAttribute("resDate", resDate);
		return "admin/res_netres";
	}
	
	/************** 코스관리 ***************/
	@RequestMapping("/course")
	public String adminCourse() {
		return "admin/course";
	}
	
	@RequestMapping(value = "/hole_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> holeList(@RequestParam(defaultValue = "1") int pageNum, Model model
			,@ModelAttribute CourseGallery courseGallery) {
		//model.addAttribute("courseGallery", courseGalleryService.getCourseGallery(courseName, holeNo));
		int totalCourse=holeService.getHoleCount();
		int pageSize=10;
		int blockSize=10;
		Pager pager=new Pager(pageNum, totalCourse, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());

		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Hole> holeList = holeService.getHoleList();
		returnMap.put("holeList", holeList);
		returnMap.put("pager", pager);
		model.addAttribute("courseList", courseService.getCourseList());
		
		return returnMap;
	}
}





















