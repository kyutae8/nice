package site.nicezo.dao;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int insertAdmin(Member member);
	int updateMember(Member member);
	int updateMemberAdmin(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList(Map<String, Object> map);
	int getMemberCount();
	Member findId(Member member);
	int findPw(Member member);

}
