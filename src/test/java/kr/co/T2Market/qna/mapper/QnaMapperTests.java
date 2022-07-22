package kr.co.T2Market.qna.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.mapper.QnaMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnaMapperTests {

	@Setter(onMethod_ = @Autowired)
	private QnaMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(mapper -> log.info(mapper));
	}
	
//	@Test
//	public void testInsert() {
//		
//		QnaVO qna = new QnaVO();
//		qna.setMember_id("member1");
//		qna.setTitle("새로 작성하는 글");
//		qna.setContent("새로 작성하는 내용");
//		
//		mapper.insert(qna);
//
//	}
//	@Test
//	public void testRead() {
//		QnaVO qna = mapper.read("5");
//
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT: "+ mapper.delete("7"));
//	}
	
//	@Test
//	public void testUpdate() {
//		QnaVO qna = new QnaVO();
//		
//		qna.setQna_no("9");
//		qna.setTitle("수정된 제목");
//		qna.setContent("수정된 내용");
//		
//		int count = mapper.update(qna);
//		log.info("Update Count: " + count);
//	}
	
	
	@Test
	public void testPaging() {
		
		QnaCriteria cri = new QnaCriteria();
		cri.setPageNum(3);
		cri.setAmount(10);
		
		List<QnaVO> list = mapper.getListWithPaging(cri);
		
		list.forEach(qna -> log.info(qna.getQna_no()));
	}
}
