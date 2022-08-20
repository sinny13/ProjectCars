package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.QnaVO;

@Mapper
public interface QnaMapper {
	public List<QnaVO> getList(QnaVO qvo);
	
	public void insert(QnaVO qna);
	
	public QnaVO view(int qid);
	
	public int delete(int qid);
	
	public int update(QnaVO qna);
	
	public void hitAdd(int qid);
	
	public int totalCnt(QnaVO qvo);
}
