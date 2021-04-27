package site.nicezo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.nicezo.dao.CourseDAO;
import site.nicezo.dto.Course;

@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public List<Course> getCourseList() {
		return courseDAO.selectCourseList();
	}

	@Override
	public int getCourseCount() {
		return courseDAO.selectCourseCount();
	}
	
}
