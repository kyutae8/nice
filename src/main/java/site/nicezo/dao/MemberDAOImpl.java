package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.nicezo.dto.Member;
import site.nicezo.mapper.MemberMapper;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}

	@Override
	public Member selectMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(id);
	}

	@Override
	public int getMemberCount() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberCount();
	}

	@Override
	public int deleteMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(id);
	}

	@Override
	public List<Member> selectMemberList(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList(map);
	}

	@Override
	public int insertAdmin(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertAdmin(member);
	}

	@Override
	public int updateMemberAdmin(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberAdmin(member);
	}

	@Override
	public Member findId(Member member) {
		return sqlSession.getMapper(MemberMapper.class).findId(member);
	}

	@Override
	public int findPw(Member member) {
		return sqlSession.getMapper(MemberMapper.class).findPw(member);
	}











	
}
