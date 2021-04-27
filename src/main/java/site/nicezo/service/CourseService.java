package site.nicezo.service;

import java.util.List;

import site.nicezo.dto.Course;

public interface CourseService {
	List<Course> getCourseList();
	int getCourseCount();
}
