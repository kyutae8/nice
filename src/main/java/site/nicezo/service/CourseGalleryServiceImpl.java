package site.nicezo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.nicezo.dao.CourseGalleryDAO;
import site.nicezo.dto.CourseGallery;

@Service
public class CourseGalleryServiceImpl implements CourseGalleryService {
	@Autowired
	private CourseGalleryDAO courseGalleryDAO;
	
	@Override
	public List<CourseGallery> getCourseGallery(String courseName, int holeNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("courseName", courseName);
		map.put("holeNo", holeNo);
		return courseGalleryDAO.selectCourseGallery(map);
	}

	@Override
	public List<CourseGallery> getCourseGalleryList(String courseName) {
		return courseGalleryDAO.selectCourseGalleryList(courseName);
	}
	
}
