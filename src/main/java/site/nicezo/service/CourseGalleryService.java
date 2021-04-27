package site.nicezo.service;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.CourseGallery;

public interface CourseGalleryService {
	List<CourseGallery> getCourseGallery(String courseName, int holeNo);
	List<CourseGallery> getCourseGalleryList(String courseName);
}
