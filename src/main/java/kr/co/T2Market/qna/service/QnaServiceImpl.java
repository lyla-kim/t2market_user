package kr.co.T2Market.qna.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.T2Market.qna.domain.QnaVO;
import kr.co.T2Market.qna.mapper.QnaMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class QnaServiceImpl implements QnaService {
	
	private QnaMapper mapper;
	
	@Override
	public void register(QnaVO qna) {
		// TODO Auto-generated method stub

	}

	@Override
	public QnaVO get(String qna_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(QnaVO qna) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(String qna_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<QnaVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
