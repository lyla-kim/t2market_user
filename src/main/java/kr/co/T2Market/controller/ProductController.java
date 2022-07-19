package kr.co.T2Market.controller;

import org.springframework.http.MediaType;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.ProductVO;
import kr.co.T2Market.domain.ReplyVO;
import kr.co.T2Market.domain.pageDTO;
import kr.co.T2Market.service.ProductService;
import kr.co.T2Market.service.ReplyService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
@AllArgsConstructor
public class ProductController {	
	private ProductService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	
	@GetMapping("/list")
	public void productList(Criteria cri, Model model) {
		
		log.info("게시판 목록 페이지 진입");
		
		model.addAttribute("list", service.getListPaging(cri));
//		model.addAttribute("pageMaker", new pageDTO(cri, 123));
		
		int total = service.getTotal(cri);
		log.info("total : " + total);
		model.addAttribute("pageMaker", new pageDTO(cri,total));
		
	}
	
	@GetMapping("/get")
	public void boardGetPageGet(String product_no, Model model) throws Exception {
		
		model.addAttribute("pageInfo", service.getPage(product_no));
		

		
	}

			

}
