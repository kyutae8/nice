package site.nicezo.dao;

import java.util.List;

import site.nicezo.dto.Reservation;

public interface ReservationDAO {
	int deleteRes(int resCode);
	int cancelRes(int resCode);
	List<Reservation> selectResCancel(Reservation reservation);
	int insertRes(Reservation reservation);
	List<Reservation> resSelectList();
	int getResCount();
	int getRescosCount(String resCosname);
	int getResplayCount(String resPlaytime);
	List<Reservation> selectResMemberList(String id);
	List<Reservation> selectRes();
}
