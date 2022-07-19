package kr.co.T2Market.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;
import kr.co.T2Market.mapper.ReplyMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_ =@Autowired)
	private ReplyMapper mapper;
	
	@Override
	public int register(ReplyVO vo) {
		log.info("register...." + vo);
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(String review_no) {
		log.info("get...." + review_no);
		return mapper.read(review_no);
	}

	@Override
	public int remove(String review_no) {
		log.info("remove....." + review_no);
		return mapper.delete(review_no);
	}

	@Override
	public int modify(ReplyVO review) {
		log.info("modify....." + review);
		return mapper.update(review);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, String product_no) {
		log.info("get Reply list " + product_no);
		return mapper.getListWithPaging(cri, product_no);
	}

}
