package kr.co.T2Market.notice.service;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.annotations.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.NoticeVO;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.service.NoticeService;
import kr.co.T2Market.service.QnaService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private NoticeService service;
	
	@Test
	public void testExist() {
		
		log.info(service);
		assertNotNull(service);
	}
//	
//	@Test
//	public void testRegister() {
//		
//		NoticeVO notice = new NoticeVO();
//		notice.setAdmin_id("admin1");
//		notice.setTitle("새로 작성 하는 글");
//		notice.setContent("새로 작성하는 내용");
//		
//		service.register(notice);
//		
//		}
	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(notice -> log.info(notice));
//		}
	
//	@Test
//	public void testGet() {
//		
//		service.get("6");
//		
//		}
//	
//	@Test
//	public void testDelete() {
//		service.remove("6");
//	
//	}
//	
//	@Test
//	public void testUpdate() {
//		
//		NoticeVO notice = service.get("2");
//		
//		if(notice == null) {
//			return;
//		}
//		
//		notice.setTitle("제목 수정합니다.");
//		service.modify(notice);
//	}
//	
	}
	
