package kr.co.T2Market.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.T2Market.domain.Criteria;
import kr.co.T2Market.domain.pageDTO;
import kr.co.T2Market.service.ProductService;
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
	@GetMapping("/detail")
	public String product(Locale locale, Model model) {
				
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "product/productdetail";
	}
	
	@GetMapping("/list")
	public String list(Criteria cri, Model model) {
		
		log.info("list : " + cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new pageDTO(cri, 123));
		
		return "product/product";
	}
}
