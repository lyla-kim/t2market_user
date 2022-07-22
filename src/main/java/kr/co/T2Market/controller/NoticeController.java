package kr.co.T2Market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.T2Market.domain.NoticeVO;

import kr.co.T2Market.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {

	private NoticeService service;
	
	@GetMapping("/list")
	public void list(Model model) {

		model.addAttribute("list", service.getList());

		
	}
	
	@PostMapping("/register")
	public String register(NoticeVO notice , RedirectAttributes rttr) {

		service.register(notice);
		
		rttr.addFlashAttribute("result", notice.getNotice_no());
		
		return "redirect:/notice/list";
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@GetMapping({"/get","modify"})
	public void get(@RequestParam("notice_no") String notice_no, Model model) {
		model.addAttribute("notice", service.get(notice_no));
	}
	
	@PostMapping("/modify")
	public String modify(NoticeVO notice, RedirectAttributes rttr) {
		
		if(service.modify(notice)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/notice/list";
	}
	
	@PostMapping("remove")
	public String remove(@RequestParam("notice_no") String Notice_no, RedirectAttributes rttr) {
		
		if(service.remove(Notice_no)) {
			rttr.addFlashAttribute("result" , "success");	
		}
		
		return "redirect:/notice/list";
	}
}
