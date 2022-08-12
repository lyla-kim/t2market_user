package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;

public interface ProductService {
	
	public void register(ProductVO product);
	
	public ProductVO get(String product_no);
	
	public ProductVO getPage(String product_no);
	
	// public List<ProductVO> getList();
		
	
	public List<ProductVO> getListPaging(Criteria cri);
	
	public int getTotal(Criteria cri);

}
