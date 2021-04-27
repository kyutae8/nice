package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.CourseGallery;
import site.nicezo.mapper.CourseGalleryMapper;

@Repository
public class CourseGalleryDAOImpl implements CourseGalleryDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CourseGallery> selectCourseGallery(Map<String, Object> map) {
		return sqlSession.getMapper(CourseGalleryMapper.class).selectCourseGallery(map);
	}

	@Override
	public List<CourseGallery> selectCourseGalleryList(String courseName) {
		return sqlSession.getMapper(CourseGalleryMapper.class).selectCourseGalleryList(courseName);
	}
	
}
