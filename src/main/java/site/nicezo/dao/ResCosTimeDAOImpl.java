package site.nicezo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.ResCosTime;
import site.nicezo.mapper.ResCosTimeMapper;

@Repository
public class ResCosTimeDAOImpl implements ResCosTimeDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<ResCosTime> costimeList() {
		
		return sqlSession.getMapper(ResCosTimeMapper.class).costimeList();
	}
	
}
