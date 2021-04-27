package site.nicezo.mapper;

import java.util.List;

import site.nicezo.dto.Reservation;

public interface ReservationMapper {
	int deleteRes(int resCode);
	int cancelRes(int resCode);
	List<Reservation> selectResCancel(Reservation reservation);
	int insertRes(Reservation reservation);
	List<Reservation> selectResList();
	int selectResCount();
	int selectRescosCount(String resCosname);
	int selectResplayCount(String resPlaytime);
	List<Reservation> selectResMemberList(String id);
	List<Reservation> selectRes();
}
