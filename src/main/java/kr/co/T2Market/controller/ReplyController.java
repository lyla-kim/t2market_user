package kr.co.T2Market.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ReplyVO;
import kr.co.T2Market.service.ReplyService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/replies/")
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;
	
	@PostMapping(value="/new", consumes = "application/json"
			, produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		// @RequestBody는 json 형태로 받은 값을 객체로 변환
		log.info("ReplyVO : " + vo);
		int insertCount = service.register(vo);
		log.info("Reply insert count: " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	@GetMapping(value="/pages/{product_no}/{page}",
			produces= {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<ReplyVO>> getList(
			@PathVariable("page") int page,
			@PathVariable("product_no") String product_no){
		// @PathVariable : url로 넘겨받은 값 이용
		log.info("getList......");
		Criteria cri = new Criteria(page, 10);
		log.info(cri);
		
		return new ResponseEntity<>(service.getList(cri, product_no), HttpStatus.OK);
		// T<List<ReplyVO>> t = new T<> ();
		// 댓글 목록을 출력하고, 정상 처리 상태를 리턴.
	}
	
	@GetMapping(value="/{review_no}",
			produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("review_no") String review_no) {
		log.info("get: " + review_no);
		return new ResponseEntity<>(
				service.get(review_no), HttpStatus.OK);
				
	}
	
	@DeleteMapping(value="/{review_no}"
			, produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(
			@PathVariable("review_no") String review_no){
		log.info("remove: " + review_no);
		
		return service.remove(review_no) == 1 ?
				new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method= {RequestMethod.PUT,
			RequestMethod.PATCH}, value="/{review_no}",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody ReplyVO vo,
			@PathVariable("review_no") String review_no){
		// put, patch 둘다 수정 처리 가르킴.
		// 생성되는 정보의 형태는 json에 일반적인 문자열 이용.
		// @RequestBody : json으로 생성된 정보를 객체화.
		vo.setReview_no(review_no);
		log.info("rno:  " + review_no);
		log.info("modify:  " + vo);
		
		return service.modify(vo) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}