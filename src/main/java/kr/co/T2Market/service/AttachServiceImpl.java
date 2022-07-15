package kr.co.T2Market.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.AttachImageVO;
import kr.co.T2Market.mapper.AttachMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AttachServiceImpl implements AttachService {

	@Autowired
	private AttachMapper attachMapper;
	
	@Override
	public List<AttachImageVO> getAttachList(String product_no) {
		// TODO Auto-generated method stub
		log.info("getAttachList.........");
		
		return attachMapper.getAttachList(product_no);
		
	}

}
