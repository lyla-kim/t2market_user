package kr.co.T2Market.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;
import kr.co.T2Market.mapper.ReplyMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyMapper dao;

	// 댓글 조회
	@Override
	public List<ReplyVO> list(String product_no) throws Exception {
		return dao.list(product_no);
	}

	@Override
	public void write(ReplyVO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public void modify(ReplyVO vo) throws Exception {
		dao.modify(vo);
	}

	@Override
	public void delete(ReplyVO vo) throws Exception {
		dao.delete(vo);
	}

}
