package kr.co.T2Market.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.ReplyDTO;
import kr.co.T2Market.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper replyMapper;
	
	@Override
	public int enrollReply(ReplyDTO dto) {
		// TODO Auto-generated method stub
		
		int result = replyMapper.enrollReply(dto);
		
		return result;
	}

}
