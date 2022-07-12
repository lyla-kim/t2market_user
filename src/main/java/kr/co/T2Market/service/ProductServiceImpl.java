package kr.co.T2Market.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.ProductVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	@Override
	public void register(ProductVO product) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ProductVO get(String product_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(ProductVO product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(String product_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ProductVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
