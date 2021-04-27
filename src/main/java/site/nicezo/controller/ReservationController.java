package site.nicezo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.nicezo.dto.Course;
import site.nicezo.dto.ResCosTime;
import site.nicezo.dto.Reservation;
import site.nicezo.exception.MemberNotFoundException;
import site.nicezo.service.CourseService;
import site.nicezo.service.ResCosTimeService;
import site.nicezo.service.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	@Autowired
	private ResCosTimeService resCosTimeService;
	@Autowired
	private CourseService courseService;

	@RequestMapping("/resinfo")
	public String res() {
		return "reservation/resinfo";
	}

	@RequestMapping( value="/netres",method=RequestMethod.GET)
	public String netres(Model model) throws MemberNotFoundException{
		List<Reservation> resList = reservationService.getResList();
		model.addAttribute("resList", resList);
		return "reservation/netres";
	}
	

	@RequestMapping(value = "/rescancel", method = RequestMethod.GET)
	public String rescancel(Model model)  throws MemberNotFoundException{
		List<Reservation> resList = reservationService.getResList();
		model.addAttribute("resList", resList);
		return "reservation/rescancel";
	}

	@RequestMapping("/resdelete")
	public String resdelete(Model model, HttpServletRequest request) {
		int resCode = Integer.parseInt(request.getParameter("resCode"));
		reservationService.removeRes(resCode);
		List<Reservation> resList = reservationService.getResList();
		model.addAttribute("resList", resList);
		return "reservation/rescancel";
	}

	@RequestMapping("/resnetroot")
	public String resnetroot() {
		return "reservation/resnetroot";
	}

	@RequestMapping("/resmobroot")
	public String resmobroot() {
		return "reservation/resmobroot";
	}

	@RequestMapping("/resreg")
	public String resreg() {
		return "reservation/resreg";
	}

	@RequestMapping(value="/netresinsert",method=RequestMethod.GET)
	public String netresinsert(Model model ,HttpServletRequest request)  throws MemberNotFoundException{
		String dateStr = request.getParameter("dateStr");
		List<Reservation> resList = reservationService.getResList();
		List<ResCosTime> costimeList = resCosTimeService.getCostimeList();
		List<Course> cosList = courseService.getCourseList();
		model.addAttribute("cosList", cosList);
		model.addAttribute("resList", resList);
		model.addAttribute("costimeList", costimeList);
		model.addAttribute("dateStr",dateStr);
		
		return "reservation/netresinsert";
	}
	@RequestMapping(value = "/netresinsert2", method = RequestMethod.GET)
	public String netresinsert2(Model model, HttpServletRequest request)  throws MemberNotFoundException{
		String resCosname = request.getParameter("resCosname");
		String resId = request.getParameter("resId");
		String resName = request.getParameter("resName");
		String resPlaytime = request.getParameter("resPlaytime");
		String resResdate = request.getParameter("resResdate");
		Reservation reservation = new Reservation();
		reservation.setResCosname(resCosname);
		reservation.setResId(resId);
		reservation.setResName(resName);
		reservation.setResPlaytime(resPlaytime);
		reservation.setResResdate(resResdate);
		List<Reservation> resList = reservationService.getResList();
		List<ResCosTime> costimeList = resCosTimeService.getCostimeList();
		List<Course> cosList = courseService.getCourseList();
		List<Reservation> resCancel = reservationService.getResCancel(reservation);
		if (resCancel.isEmpty()) {
			model.addAttribute("cosList", cosList);
			model.addAttribute("resList", resList);
			model.addAttribute("costimeList", costimeList);
			model.addAttribute("resCancel",resCancel);
			model.addAttribute("dateStr",resResdate);
			reservationService.addRes(reservation);
			return "reservation/resclear";
		}else {
			model.addAttribute("dateStr",resResdate);
			model.addAttribute("msg","이미 예약된 시간대입니다.");
			model.addAttribute("cosList", cosList);
			model.addAttribute("resList", resList);
			model.addAttribute("costimeList", costimeList);
			model.addAttribute("resCancel",resCancel);
			return "reservation/netresinsert";
		}
		

	}
	@RequestMapping("/resclear")
	public String resclear() {
		return "reservation/resclear";
	}

}
