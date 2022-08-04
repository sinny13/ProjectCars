package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.MemberDTO;


@Mapper // @Mapper 생략가능 
public interface MemberMapper {
	
	// 회원 전체리스트 가져오기
	public List<MemberDTO> memberList(); 
	
	// 회원 저장(insert)
	public int memberInsert(MemberDTO dto);
	
	// 회원 삭제
	public int memberDel(int no);
	
	// 회원 정보 상세보기
	public MemberDTO memberInfo(int no);
	
	// 회원 정보 수정
	public int memberUpdate(MemberDTO dto);
		
	// 로그인
	public String memberLogin(MemberDTO dto);
	
}
