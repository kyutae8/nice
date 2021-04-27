package site.nicezo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import site.nicezo.dto.Course;
import site.nicezo.dto.CourseGallery;
import site.nicezo.dto.Hole;
import site.nicezo.service.CourseGalleryService;
import site.nicezo.service.CourseService;
import site.nicezo.service.HoleService;

@RestController
public class CourseRestController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private HoleService holeService;
	@Autowired
	private CourseGalleryService courseGalleryService;
	
	@RequestMapping("course/get_course")
	public List<Course> getCourseList() {
		return courseService.getCourseList(); 
	}
	
	@RequestMapping("course/get_holeList")
	public List<Map<String, Object>> getHoleList(@RequestParam String courseName) {
		return holeService.getHoleParList(courseName);
	}
	
	@RequestMapping("course/get_holeContent")
	public Map<String, Object> getHoleContent(@RequestParam String courseName, @RequestParam int holeNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hole", holeService.getHoleCourseList(courseName).get(holeNo-1));
		map.put("courseGalleryList", courseGalleryService.getCourseGallery(courseName, holeNo));
		return map;
	}
	
	@RequestMapping("course/get_courseGallery")
	public List<CourseGallery> getCourseGallery(@RequestParam String courseName) {
		return courseGalleryService.getCourseGalleryList(courseName);
	}
}
