package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.Hole;
import site.nicezo.mapper.HoleMapper;

@Repository
public class HoleDAOImpl implements HoleDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Hole> selectHoleList() {
		return sqlSession.getMapper(HoleMapper.class).selectHoleList();
	}

	@Override
	public List<Hole> selectHoleCourseList(String courseName) {
		return sqlSession.getMapper(HoleMapper.class).selectHoleCourseList(courseName);
	}
	
	@Override
	public Hole selectHoleId(int holeId) {
		return sqlSession.getMapper(HoleMapper.class).selectHoleId(holeId);
	}
	
	@Override
	public List<Map<String, Object>> selectHoleParList(String courseName) {
		return sqlSession.getMapper(HoleMapper.class).selectHoleParList(courseName);
	}

	@Override
	public int selectHoleCount() {
		return sqlSession.getMapper(HoleMapper.class).selectHoleCount();
	}
}
