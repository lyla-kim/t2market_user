package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;

public interface QnaMapper {
	
	//@Select("select * from qna_user where qna_no > 0")
	public List<QnaVO> getList();
	
	public List<QnaVO> getListWithPaging(QnaCriteria cri);
	
	public void insert(QnaVO Qna);
	
	public Integer insertSelectKey(QnaVO Qna);
	
	public QnaVO read(String qna_no);
	
	public int delete(String qna_no);
	
	public int update(QnaVO qna);
	
	public int getTotalCount(QnaCriteria cri);
	
	
}
