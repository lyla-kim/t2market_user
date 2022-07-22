package kr.co.T2Market.Cart.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.CartDTO;
import kr.co.T2Market.mapper.CartMapper;
import lombok.Setter;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTests {

	@Autowired
	private CartMapper mapper;
	
//	@Test
//	public void addCart() {
//		String member_id = "member1";
//		String product_no = "1";
//		int sales = 2;
//		
//		
//		CartDTO cart = new CartDTO();
//		cart.setMember_id(member_id);
//		cart.setProduct_no(product_no);
//		cart.setSales(sales);
//		
//		int result = 0;
//		result = mapper.addCart(cart);
//		
//		System.out.println("결과 : " + result);
//		
//	}
//	
//	@Test
//	public void deleteCartTest() {
//		String cart_no = "4";
//		
//		mapper.deleteCart(cart_no);
//	}
//	
	
	/* 카트 수량 수정 */
	
//	@Test
//	public void modifyCartTest() {
//		String Cart_no = "5";
//		int Count = 6;
//		
//		CartDTO cart = new CartDTO();
//		cart.setCart_no(Cart_no);
//		cart.setSales(Count);
//		
//		mapper.modifyCount(cart);
//	}
	
	@Test
	public void getCartTest() {
		String member_id = "member1";
		
		List<CartDTO> list = mapper.getCart(member_id);
		for(CartDTO cart : list) {
			System.out.println(cart);
			cart.initSaleTotal();
			System.out.println("init cart : " + cart);
		}
	}
	
//	@Test
//	public void checkCartTest() {
//		
//		String member_id = "member1";
//		String product_no = "1";
//		
//		CartDTO cart = new CartDTO();
//		cart.setMember_id(member_id);
//		cart.setProduct_no(product_no);
//		
//		CartDTO resultCart = mapper.checkCart(cart);
//		System.out.println("결과 : " + resultCart);
//	}
	
}