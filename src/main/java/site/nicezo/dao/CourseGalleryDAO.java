package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.CourseGallery;

public interface CourseGalleryDAO {
	List<CourseGallery> selectCourseGallery(Map<String, Object> map);
	List<CourseGallery> selectCourseGalleryList(String courseName);
}
