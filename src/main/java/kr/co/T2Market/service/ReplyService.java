package kr.co.T2Market.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(String review_no);
	public int remove(String review_no);
	public int modify(ReplyVO review);
	public List<ReplyVO> getList(
			@Param("cri") Criteria cri,
			@Param("product_no") String product_no);
	
}
