package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;


import kr.co.T2Market.domain.NoticeVO;


public interface NoticeMapper {
	
	
	public List<NoticeVO> getList();
	
	public void insert(NoticeVO Notice);
	
	public Integer insertSelectKey(NoticeVO Notice);
	
	public NoticeVO read(String notice_no);
	
	public int delete(String notice_no);
	
	public int update(NoticeVO notice);
	
}
