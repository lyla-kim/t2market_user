package kr.co.T2Market.product;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;
import kr.co.T2Market.mapper.ProductMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
//	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(product -> log.info(product));
//	}
	
//	@Test
//	public void testInsert() {
//		
//		ProductVO product = new ProductVO();
//		product.setProduct_no("test2");
//		product.setCode1("10000");
//		product.setCode2("10100");
//		product.setExplain("test2");
//		product.setName("test2");
//		product.setDiscount(10);
//		product.setSell_price(10);
//		product.setReal_price(10);
//		product.setTotal_output(10);
//		product.setTotal_sales(10);
//		product.setInput(10);
//		product.setActive("Y");
//		
//		mapper.insert(product);
//		
//		log.info(product);
//		
//	}
	
//	@Test
//	public void testRead() {
//		
//		ProductVO product = mapper.read("11");
//		
//		log.info(product);
//	}
	
//	@Test
//	public void testDelete() {
//		
//		log.info("DELETE COUNT : " + mapper.delete("1"));
//	}
	
//	@Test
//	public void testUpdate() {
//		
//		ProductVO product = new ProductVO();
//		
//		product.setProduct_no("111");
//		product.setCode1("10000");
//		product.setCode2("10100");
//		product.setExplain("상품설명Test2");
//		product.setName("상품이름");
//		product.setDiscount(20);
//		product.setSell_price(200);
//		product.setReal_price(300);
//		product.setTotal_output(300);
//		product.setTotal_sales(300);
//		product.setInput(30);
//		product.setStock(30);
//		product.setActive("N");
//		
//		int count = mapper.update(product);
//		log.info("Update Count : " + count);
//		
//	}
	
	@Test
	public void testPaging() {
		
		Criteria cri = new Criteria();
		cri.setPageNum(1);
		cri.setAmount(10);
		
		List<ProductVO> list = mapper.getListPaging(cri);
		
		list.forEach(product -> log.info(product));
		
	}
}
