package site.nicezo.dao;

import java.util.List;

import site.nicezo.dto.Course;

public interface CourseDAO {
	List<Course> selectCourseList();
	int selectCourseCount();
}
