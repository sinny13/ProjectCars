package kr.mr.mapper;

import java.util.List;



<<<<<<< HEAD

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
	public BoardVO view(int bid);
	
	// 게시글 삭제
	public int delete(int bid);
	
	// 게시글 수정
	public int update(BoardVO board);
	
	// 조회수 증가
	public void hitAdd(int bid);
=======
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
>>>>>>> branch 'topic_new0808' of https://github.com/sinny13/ProjectCars.git
	
	// 전체 게시글 개수
	public int totalCnt(BoardVO bvo);
}
