package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;


public interface ProductMapper {

	//@Select("select * from product")
	public List<ProductVO> getList();

	//게시판 조회
	public ProductVO getPage(String name);
	
	public ProductVO read(String product_no);
	
	//게시판 목록(페이징 적용)
	public List<ProductVO> getListPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public List<ProductVO> list(Criteria cri) throws Exception;
}
