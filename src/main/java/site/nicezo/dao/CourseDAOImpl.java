package site.nicezo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.Course;
import site.nicezo.mapper.CourseMapper;

@Repository
public class CourseDAOImpl implements CourseDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Course> selectCourseList() {
		return sqlSession.getMapper(CourseMapper.class).selectCourseList();
	}

	@Override
	public int selectCourseCount() {
		return sqlSession.getMapper(CourseMapper.class).selectCourseCount();
	}
	
}
