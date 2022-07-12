package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.T2Market.domain.ProductVO;

@Mapper
public interface ProductMapper {

	//@Select("select * from product")
	public List<ProductVO> getList();
	
	public void insert(ProductVO product);
	
	public void insertSelectKey(ProductVO product);
	
	public ProductVO read(String product_no);
	
	public int delete(String product_no);
	
	public int update(ProductVO board);
}
