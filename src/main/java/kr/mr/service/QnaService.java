package kr.mr.service;

import java.util.List;

import kr.mr.model.QnaVO;

public interface QnaService {
	
	public List<QnaVO> getList(QnaVO qvo);
	
	public void register(QnaVO qna);
	
	public QnaVO view(int qid, String mode);
	
	public int remove(int qid);
	
	public int modify(QnaVO qna);
	
	public int totalCnt(QnaVO qvo);
}
