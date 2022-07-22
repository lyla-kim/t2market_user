package kr.co.T2Market.notice.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.NoticeVO;
import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.mapper.NoticeMapper;
import kr.co.T2Market.mapper.QnaMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(mapper -> log.info(mapper));
	}
	
//	@Test
//	public void testInsert() {
//		
//		NoticeVO notice = new NoticeVO();
//		notice.setAdmin_id("admin1");
//		notice.setTitle("새로 작성하는 글");
//		notice.setContent("새로 작성하는 내용");
//		
//		mapper.insert(notice);
//
//	}
	
//	@Test
//	public void testRead() {
//		NoticeVO notice = mapper.read("4");
//
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT: "+ mapper.delete("4"));
//	}
//	
//	@Test
//	public void testUpdate() {
//		NoticeVO notice = new NoticeVO();
//		
//		notice.setNotice_no("2");
//		notice.setTitle("수정된 제목");
//		notice.setContent("수정된 내용");
//		
//		int count = mapper.update(notice);
//		log.info("Update Count: " + count);
//	}
	
	
}
