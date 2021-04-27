package site.nicezo.service;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Hole;

public interface HoleService {
	List<Hole> getHoleList();
	List<Hole> getHoleCourseList(String courseName);
	Hole getHole(int holeId);
	List<Map<String, Object>> getHoleParList(String courseName);
	int getHoleCount();
}
