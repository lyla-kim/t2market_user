package kr.co.T2Market.qna.service;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.annotations.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.service.QnaService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnaServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private QnaService service;
	
	@Test
	public void testExist() {
		
		log.info(service);
		assertNotNull(service);
	}
	
//	@Test
//	public void testRegister() {
//		
//		QnaVO qna = new QnaVO();
//		qna.setTitle("새로 작성 하는 글");
//		qna.setContent("새로 작성하는 내용");
//		
//		service.register(qna);
//		
//		}
	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(qna -> log.info(qna));
//		}
	
//	@Test
//	public void testGet() {
//		
//		service.get("8");
//		
//		}
	
	@Test
	public void testDelete() {
		service.remove("8");
	
	}
	
	@Test
	public void testUpdate() {
		
		QnaVO qna = service.get("9");
		
		if(qna == null) {
			return;
		}
		
		qna.setTitle("제목 수정합니다.");
		service.modify(qna);
	}
	
	}
	
