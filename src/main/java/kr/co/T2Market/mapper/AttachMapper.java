package kr.co.T2Market.mapper;

import java.util.List;

import kr.co.T2Market.domain.AttachImageVO;

public interface AttachMapper {
	
	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(String product_no);
}
