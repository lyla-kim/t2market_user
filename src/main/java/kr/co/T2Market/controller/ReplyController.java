package kr.co.T2Market.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.T2Market.domain.ReplyVO;
import kr.co.T2Market.service.ReplyService;

@Controller
@RequestMapping("/review/*")
public class ReplyController {
	
	@Inject
	private ReplyService review;
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String posttWirte(ReplyVO vo) throws Exception {
		
		review.write(vo);
		
		return "redirect:/product/get?product_no=" + vo.getProduct_no();
	}

}