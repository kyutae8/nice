package site.nicezo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.nicezo.dao.HoleDAO;
import site.nicezo.dto.Hole;

@Service
public class HoleServiceImpl implements HoleService {
	@Autowired
	private HoleDAO holeDAO;
	
	@Override
	public List<Hole> getHoleList() {
		return holeDAO.selectHoleList();
	}

	@Override
	public Hole getHole(int holeId) {
		return holeDAO.selectHoleId(holeId);
	}

	@Override
	public List<Hole> getHoleCourseList(String courseName) {
		return holeDAO.selectHoleCourseList(courseName);
	}
	
	@Override
	public List<Map<String, Object>> getHoleParList(String courseName) {
		return holeDAO.selectHoleParList(courseName);
	}

	@Override
	public int getHoleCount() {
		return holeDAO.selectHoleCount();
	}
}
