package kr.co.T2Market.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.NoticeVO;
import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.mapper.NoticeMapper;
import kr.co.T2Market.mapper.QnaMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	
	private NoticeMapper mapper;
	
	@Override
	public void register(NoticeVO notice) {
		
		mapper.insertSelectKey(notice);

	}

	@Override
	public NoticeVO get(String notice_no) {
		// TODO Auto-generated method stub
		return mapper.read(notice_no);
	}

	@Override
	public boolean modify(NoticeVO notice) {
		// TODO Auto-generated method stub
		return mapper.update(notice) == 1;
	}

	@Override
	public boolean remove(String notice) {
		// TODO Auto-generated method stub
		return mapper.delete(notice) == 1;
	}

	@Override
	public List<NoticeVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	

}
