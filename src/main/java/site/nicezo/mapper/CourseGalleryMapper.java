package site.nicezo.mapper;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.CourseGallery;

public interface CourseGalleryMapper {
	List<CourseGallery> selectCourseGallery(Map<String, Object> map);
	List<CourseGallery> selectCourseGalleryList(String courseName);
}
