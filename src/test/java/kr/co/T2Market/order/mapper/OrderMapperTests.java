package kr.co.T2Market.order.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.OrderVO;
import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.mapper.OrderMapper;
import kr.co.T2Market.mapper.QnaMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTests {

	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(mapper -> log.info(mapper));
//	}
	
//	@Test
//	public void testInsert() {
//		
//		OrderVO order = new OrderVO();
//		order.setMember_id("member1");
//		order.setBuyer_name("주문자명1");
//		order.setReciever_name("수신자명1");
//		order.setReciever_address("수신자 주소");
//		order.setReciever_phone("수신자 연락처");	
//		
//		mapper.insert(order);
//
//	}
//	@Test
//	public void testRead() {
//		OrderVO order = mapper.read("5");
//
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT: "+ mapper.delete("7"));
//	}
	
//	@Test
//	public void testUpdate() {
//		OrderVO order = new OrderVO();
//		
//		order.setReciept_no("6");
//		order.setMember_id("member1");
//		order.setBuyer_name("주문자명2");
//		order.setReciever_name("수신자명2");
//		order.setReciever_address("수신자 주소2");
//		order.setReciever_phone("수신자 연락처2");
//		
//		int count = mapper.update(order);
//		log.info("Update Count: " + count);
//	}
//	
}
