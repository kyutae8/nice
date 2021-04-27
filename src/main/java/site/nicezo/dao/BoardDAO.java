package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Board;

public interface BoardDAO {
	int insertBoard(Board board);
	int updateBoard(Board board);
	int deleteBoard(int num);
	Board selectBoard(int num);
	int selectBoardCount(int category);
	List<Board> selectBoardList(Map<String, Object> map);
	int updateReadCount(int num);
}
