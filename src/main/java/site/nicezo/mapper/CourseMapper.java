package site.nicezo.mapper;

import java.util.List;

import site.nicezo.dto.Course;

public interface CourseMapper {
	List<Course> selectCourseList();
	int selectCourseCount();
}
