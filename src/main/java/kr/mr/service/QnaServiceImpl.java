package kr.mr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.mr.mapper.QnaMapper;
import kr.mr.model.QnaVO;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	private QnaMapper mapper;
	
	@Override
	public List<QnaVO> getList(QnaVO qvo){
		return mapper.getList(qvo);
	}
	
	@Override
	public void register(QnaVO qna) {
		mapper.insert(qna);
	}
	
	@Override
	public QnaVO view(int qid, String mode) {
		if(mode.equals("view")) {
			mapper.hitAdd(qid);
		}
		return mapper.view(qid);
	}

	@Override
	public int remove(int qid) {
		return mapper.delete(qid);
	}
	
	@Override
	public int modify(QnaVO qna) {
		return mapper.update(qna);
	}
	
	@Override
	public int totalCnt(QnaVO qvo) {
		return mapper.totalCnt(qvo);
	}
	

}
