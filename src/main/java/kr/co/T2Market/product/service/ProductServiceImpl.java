package kr.co.T2Market.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.mapper.ProductMapper;
import kr.co.T2Market.product.domain.ProductVO;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
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
		return mapper.getList();
	}

}
