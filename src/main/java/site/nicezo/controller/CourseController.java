package site.nicezo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.nicezo.dto.Course;
import site.nicezo.dto.CourseGallery;
import site.nicezo.dto.Member;
import site.nicezo.exception.MemberExistsException;
import site.nicezo.service.CourseGalleryService;
import site.nicezo.service.CourseService;
import site.nicezo.service.HoleService;
import site.nicezo.service.MemberService;

@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private CourseGalleryService courseGalleryService;
	
	@RequestMapping("/intro")
	public String intro() {
		return "course/course_intro";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String info(Model model) {
		List<Course> courseList = courseService.getCourseList();
		model.addAttribute("courseList", courseList);
		model.addAttribute("courseName", "Orange");
		model.addAttribute("holeNo", 1);
		return "course/course_info";
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	public String info(@RequestParam String courseName, @RequestParam int holeNo , Model model) {
		List<Course> courseList = courseService.getCourseList();
		model.addAttribute("courseList", courseList);
		model.addAttribute("courseName", courseName);
		model.addAttribute("holeNo", holeNo);
		return "course/course_info";
	}
	
	@RequestMapping("/gallery")
	public String gallery(Model model) {
		String courseName = "Orange";
		List<Course> courseList = courseService.getCourseList();
		List<CourseGallery> courseGalleryList = courseGalleryService.getCourseGalleryList(courseName);
		
		model.addAttribute("courseName", courseName);
		model.addAttribute("courseList", courseList);
		model.addAttribute("courseGalleryList", courseGalleryList);
		return "course/course_gallery";
	}
}
