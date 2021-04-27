package site.nicezo.service;

import java.util.List;

import site.nicezo.dto.Reservation;
import site.nicezo.mapper.ReservationMapper;

public interface ReservationService {
	int removeRes(int resCode);
	int cancelRess(int resCode);
	List<Reservation> getResCancel(Reservation reservation);
	int addRes(Reservation reservation);
List<Reservation> getResList();
int getResCount();
int getRescosCount(String resCosname);
int getResplayCount(String resPlaytime);
List<Reservation> getResMemberList(String id);
List<Reservation> getRes();
}
