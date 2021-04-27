package site.nicezo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.Reservation;
import site.nicezo.mapper.ReservationMapper;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
	@Autowired
private SqlSession sqlSession;

	@Override
	public List<Reservation> resSelectList() {
		
		return sqlSession.getMapper(ReservationMapper.class).selectResList();
	}

	@Override
	public int deleteRes(int resCode) {
		return sqlSession.getMapper(ReservationMapper.class).deleteRes(resCode);
	}


	@Override
	public int insertRes(Reservation reservation) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReservationMapper.class).insertRes(reservation);
	}

	@Override
	public List<Reservation> selectResCancel(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).selectResCancel(reservation);
	}

	@Override
	public int getResCount() {
		return sqlSession.getMapper(ReservationMapper.class).selectResCount();
	}

	@Override
	public int getRescosCount(String resCosname) {
		return sqlSession.getMapper(ReservationMapper.class).selectRescosCount(resCosname);
	}

	@Override
	public int getResplayCount(String resPlaytime) {
		return sqlSession.getMapper(ReservationMapper.class).selectResplayCount(resPlaytime);
	}

	@Override
	public List<Reservation> selectResMemberList(String id) {
		return sqlSession.getMapper(ReservationMapper.class).selectResMemberList(id);
	}

	@Override
	public int cancelRes(int resCode) {
		return sqlSession.getMapper(ReservationMapper.class).cancelRes(resCode);
	}

	@Override
	public List<Reservation> selectRes() {
		return sqlSession.getMapper(ReservationMapper.class).selectRes();
	}


	

	
}
