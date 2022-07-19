package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;
import kr.co.T2Market.domain.ReplyVO;

public interface ReplyMapper {

	public int insert(ReplyVO vo);
	
	public ReplyVO read(String review_no);
	
	public int delete(String review_no);
	
	public int update(ReplyVO review);
	
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("product_no") String product_no);
	
} 
