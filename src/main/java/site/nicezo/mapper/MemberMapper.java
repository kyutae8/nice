package site.nicezo.mapper;

import java.util.List;
import java.util.Map;

import site.nicezo.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int insertAdmin(Member member);
	int updateMember(Member member);
	int updateMemberAdmin(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList(Map<String, Object> map);
	int selectMemberCount();
	Member findId(Member member);
	int findPw(Member member);
	

	
}
