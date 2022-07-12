package kr.co.T2Market.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;
import kr.co.T2Market.mapper.ProductMapper;
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
		
		log.info("get........." + product_no);
		
		return mapper.read(product_no);
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

//	@Override
//	public List<ProductVO> getList() {
//		// TODO Auto-generated method stub
//		
//		log.info("getlist........");
//		return mapper.getList();
//	}
	
	@Override
	public List<ProductVO> getList(Criteria cri) {
		
		log.info("get List with criteria : " + cri);
		
		return mapper.getListPaging(cri);
	}

}
