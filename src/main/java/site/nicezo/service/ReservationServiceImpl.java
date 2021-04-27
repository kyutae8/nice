package site.nicezo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.nicezo.dao.ReservationDAO;
import site.nicezo.dto.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationDAO reservationDAO;

	@Override
	public List<Reservation> getResList() {
		return reservationDAO.resSelectList();
	}

	@Override
	public int removeRes(int resCode) {
		// TODO Auto-generated method stub
		return reservationDAO.deleteRes(resCode);
	}


	@Override
	public int addRes(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDAO.insertRes(reservation);
	}

	@Override
	public List<Reservation> getResCancel(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDAO.selectResCancel(reservation);
	}

	@Override
	public int getResCount() {
		return reservationDAO.getResCount();
	}

	@Override
	public int getRescosCount(String resCosname) {
		return reservationDAO.getRescosCount(resCosname);

	}

	@Override
	public int getResplayCount(String resPlaytime) {
		return reservationDAO.getResplayCount(resPlaytime);
	}

	@Override
	public List<Reservation> getResMemberList(String id) {
		return reservationDAO.selectResMemberList(id);
	}

	@Override
	public int cancelRess(int resCode) {
		return reservationDAO.cancelRes(resCode);
	}

	@Override
	public List<Reservation> getRes() {
		return reservationDAO.selectRes();
	}


	
}
