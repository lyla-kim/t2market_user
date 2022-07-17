package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;

public interface ReplyService {

	// 댓글 조회
	public List<ReplyVO> list(String product_no) throws Exception;

	// 댓글 조회
	public void write(ReplyVO vo) throws Exception;

	// 댓글 수정
	public void modify(ReplyVO vo) throws Exception;

	// 댓글 삭제
	public void delete(ReplyVO vo) throws Exception;
		
	
}
