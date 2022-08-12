package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;
import kr.co.T2Market.domain.ReplyVO;

public interface ReplyMapper {

	public int writeReply(ReplyVO vo);
	
	public ReplyVO read(String review_no);
	
	public void delete(String review_no);
	
	public int update(ReplyVO review);
	
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("product_no") String product_no);
	
	public int gettotalr(Criteria cri);
	
	public int selectCount (String product_no);
	
	public int sumreview(String product_no);
	
	public Double getscoreavg(String product_no);
	
	public int updatescoreavg(ReplyVO dvo);
	
	
} 
