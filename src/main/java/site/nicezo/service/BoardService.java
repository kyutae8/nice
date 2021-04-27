package site.nicezo.service;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Board;


public interface BoardService {
	void addBoard(Board board);
	void modifyBoard(Board board);
	void removeBoard(int num);
	Board getBoard(int num);
	int getBoardCount(int category);
	List<Board> getBoardList(Map<String, Object> map);
	int updateReadCount(int num);
}
