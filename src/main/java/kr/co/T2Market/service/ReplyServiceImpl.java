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

		return 0;
	}

	@Override
	public ReplyVO get(String review_no) {
		log.info("get...." + review_no);
		return mapper.read(review_no);
	}

	@Override
	public void remove(String review_no) {
		log.info("remove....." + review_no);
		mapper.delete(review_no);
		return;
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
	
	@Override
	public int gettotalr(Criteria cri) {
		return mapper.gettotalr(cri);
	}
	
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		mapper.writeReply(vo);
	}
	
	@Override
	public int selectCount(String product_no) {
		return mapper.selectCount(product_no);
	}

	@Override
	public int sumreview(String product_no) {
		return mapper.sumreview(product_no);
	}
	
	@Override
	public double getscoreavg(String product_no) {
	      log.info("되는거여 안되는거여..................");
	    return mapper.getscoreavg(product_no);   
	}
}
