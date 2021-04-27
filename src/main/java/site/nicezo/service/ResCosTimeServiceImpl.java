package site.nicezo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.nicezo.dao.ResCosTimeDAO;
import site.nicezo.dto.ResCosTime;

@Service
public class ResCosTimeServiceImpl implements ResCosTimeService{
	@Autowired
	private ResCosTimeDAO cosTimeDAO;

	@Override
	public List<ResCosTime> getCostimeList() {
		return cosTimeDAO.costimeList();
	}
	
}
