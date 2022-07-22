package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.NoticeVO;


public interface NoticeService {

	public void register(NoticeVO notice);
	
	public NoticeVO get(String notice_no);
	
	public boolean modify(NoticeVO notice);
	
	public boolean remove(String notice_no);
	
	public List<NoticeVO> getList();
	
}
