package kr.co.T2Market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.T2Market.domain.QnaCriteria;
import kr.co.T2Market.domain.QnaPageDTO;
import kr.co.T2Market.domain.QnaVO;
import kr.co.T2Market.service.QnaService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/qna/*")
@AllArgsConstructor
public class QnaController {

	private QnaService service;
	
	@GetMapping("/list")
	public void list(QnaCriteria cri, Model model) {
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new QnaPageDTO(cri, 123));
		
		int total = service.getTotal(cri);
		
		model.addAttribute("pageMaker", new QnaPageDTO(cri, total));
	}
	
	@PostMapping("/register")
	public String register(QnaVO qna , RedirectAttributes rttr) {

		service.register(qna);
		
		rttr.addFlashAttribute("result", qna.getQna_no());
		
		return "redirect:/qna/list";
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@GetMapping({"/get","modify"})
	public void get(@RequestParam("qna_no") String qna_no, @ModelAttribute("cri") QnaCriteria cri, Model model) {
		model.addAttribute("qna", service.get(qna_no));
	}
	
	@PostMapping("/modify")
	public String modify(QnaVO qna, @ModelAttribute("cri") QnaCriteria cri, RedirectAttributes rttr) {
		
		if(service.modify(qna)) {
			rttr.addFlashAttribute("result", "success");
		}
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/qna/list";
	}
	
	@PostMapping("remove")
	public String remove(@RequestParam("qna_no") String Qna_no, @ModelAttribute("cri") QnaCriteria cri, RedirectAttributes rttr) {
		
		if(service.remove(Qna_no)) {
			rttr.addFlashAttribute("result" , "success");	
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/qna/list";
	}
}
