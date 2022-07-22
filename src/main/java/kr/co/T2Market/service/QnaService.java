package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;

public interface QnaService {

	public void register(QnaVO qna);
	
	public QnaVO get(String qna_no);
	
	public boolean modify(QnaVO qna);
	
	public boolean remove(String qna_no);
	
//	public List<QnaVO> getList();
	
	public List<QnaVO> getList(QnaCriteria cri);
	
	public int getTotal(QnaCriteria cri);
}
