package kr.co.T2Market.mapper;


import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AttachMapperTests {

	@Autowired
	private AttachMapper attachMapper;
	
	@Test
	public void getAttachListTests() {
		
		String product_no = "pro99";
		
		System.out.println("이미지 정보 : " + attachMapper.getAttachList(product_no));
		
		
	}
}
