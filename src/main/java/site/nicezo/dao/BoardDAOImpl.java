package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.Board;
import site.nicezo.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).insertBoard(board);
	}

	@Override
	public int updateBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(board);

	}

	@Override
	public int deleteBoard(int num) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(num);

	}

	@Override
	public Board selectBoard(int num) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(num);

	}
	
	@Override
	public int selectBoardCount(int category) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardCount(category);

	}

	@Override
	public List<Board> selectBoardList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardList(map);

	}

	@Override
	public int updateReadCount(int num) {
		return sqlSession.getMapper(BoardMapper.class).updateReadCount(num);
	}

}
