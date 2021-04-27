package site.nicezo.mapper;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Hole;

public interface HoleMapper {
	List<Hole> selectHoleList();
	List<Hole> selectHoleCourseList(String courseName);
	Hole selectHoleId(int holeId);
	List<Map<String, Object>> selectHoleParList(String courseName);
	int selectHoleCount();
	
}
