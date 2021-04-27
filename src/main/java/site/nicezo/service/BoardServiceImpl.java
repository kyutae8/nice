package site.nicezo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.nicezo.dao.BoardDAO;
import site.nicezo.dto.Board;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addBoard(Board board) {
		boardDAO.insertBoard(board);
	}

	@Transactional
	@Override
	public void modifyBoard(Board board) {
		boardDAO.updateBoard(board);
	}

	@Transactional
	@Override
	public void removeBoard(int num) {
		boardDAO.deleteBoard(num);
	}

	@Override
	public Board getBoard(int num) {
		return boardDAO.selectBoard(num);
	}

	@Override
	public int getBoardCount(int category) {
		return boardDAO.selectBoardCount(category);
	}

	@Override
	public List<Board> getBoardList(Map<String, Object> map) {
		return boardDAO.selectBoardList(map);
	}

	@Transactional
	@Override
	public int updateReadCount(int num) {
		return boardDAO.updateReadCount(num);
	}

}
