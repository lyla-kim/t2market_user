package kr.co.T2Market.service;

import kr.co.T2Market.domain.ReplyDTO;

public interface ReplyService {

	/* 댓글 등록 */
	public int enrollReply(ReplyDTO dto);
}
