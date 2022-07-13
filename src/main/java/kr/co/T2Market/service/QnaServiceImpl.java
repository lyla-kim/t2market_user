package kr.co.T2Market.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.mapper.QnaMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class QnaServiceImpl implements QnaService {
	
	private QnaMapper mapper;
	
	@Override
	public void register(QnaVO qna) {
		
		mapper.insertSelectKey(qna);

	}

	@Override
	public QnaVO get(String qna_no) {
		// TODO Auto-generated method stub
		return mapper.read(qna_no);
	}

	@Override
	public boolean modify(QnaVO qna) {
		// TODO Auto-generated method stub
		return mapper.update(qna) == 1;
	}

	@Override
	public boolean remove(String qna_no) {
		// TODO Auto-generated method stub
		return mapper.delete(qna_no) == 1;
	}

//	@Override
//	public List<QnaVO> getList() {
//		// TODO Auto-generated method stub
//		return mapper.getList();
//	}
	
	@Override
	public List<QnaVO> getList(QnaCriteria cri) {
		
		return mapper.getListWithPaging(cri);
		
	}
	
	@Override
	public int getTotal(QnaCriteria cri) {
		
		return mapper.getTotalCount(cri);
	}

}
