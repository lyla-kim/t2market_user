package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.ProductVO;

public interface ProductService {
	
	public void register(ProductVO product);
	
	public ProductVO get(String product_no);
	
	public boolean modify(ProductVO product);
	
	public boolean remove(String product_no);
	
	public List<ProductVO> getList();
}
