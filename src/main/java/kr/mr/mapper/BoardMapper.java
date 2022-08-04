package kr.mr.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.BoardVO;

//springMVC 구조 : Controller > Service > DAO > DateBase
@Mapper
public interface BoardMapper {
	// 게시판 리스트 가져오기
	public List<BoardVO> getList(BoardVO bvo);

	// 등록
	public void insert(BoardVO board);
	
	// 게시글 상세보기
	public BoardVO view(int bno);
	
	// 게시글 삭제
	public int delete(int bno);
	
	// 게시글 수정
	public int update(BoardVO board);
	
	// 조회수 업데이트
	public void hitAdd(int bno);
	
	// 전체 게시글 개수
	public int totalCnt(BoardVO bvo);
}
