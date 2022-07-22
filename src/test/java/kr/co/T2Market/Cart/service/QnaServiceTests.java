package kr.co.T2Market.Cart.service;

import static org.junit.Assert.assertNotNull;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.CartDTO;
import kr.co.T2Market.service.CartService;
import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class QnaServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private CartService service;
	
	
	@Test
	public void addCartTest() {
		//given
			String member_id = "member1";
			String product_no = "2";
			int sales = 5;
			
			
			CartDTO dto = new CartDTO();
			dto.setMember_id(member_id);
			dto.setProduct_no(product_no);
			dto.setSales(sales);
		
		//when
			int result = service.addCart(dto);
		
		//then
			System.out.println("** result : " + result);
		
		
	}
}