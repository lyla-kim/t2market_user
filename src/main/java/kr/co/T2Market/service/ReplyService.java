package kr.co.T2Market.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(String review_no);
	public void remove(String review_no);
	public int modify(ReplyVO review);
	public List<ReplyVO> getList(
			@Param("cri") Criteria cri,
			@Param("product_no") String product_no);
	
	public int gettotalr(Criteria cri);
	
	//댓글 작성
	public void writeReply(ReplyVO vo) throws Exception;
	
	public int selectCount (String product_no);
	
	public int sumreview(String product_no);
	
	public double getscoreavg(String product_no);
}
