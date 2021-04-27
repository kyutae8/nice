package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Hole;

public interface HoleDAO {
	List<Hole> selectHoleList();
	List<Hole> selectHoleCourseList(String courseName);
	Hole selectHoleId(int holeId);
	List<Map<String, Object>> selectHoleParList(String courseName);
	int selectHoleCount();
}
