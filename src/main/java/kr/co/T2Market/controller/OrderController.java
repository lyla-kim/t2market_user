package kr.co.T2Market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.T2Market.domain.OrderVO;
import kr.co.T2Market.service.OrderService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/order/*")
@AllArgsConstructor
public class OrderController {

	private OrderService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list" , service.getList());
	}
	
	@PostMapping("/register")
	public String register(OrderVO order, RedirectAttributes rttr) {
		service.register(order);
		
		rttr.addFlashAttribute("result" , order.getReciept_no());
		return "redirect:/order/list";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("reciept_no") String reciept_no, Model model) {
		model.addAttribute("order", service.get(reciept_no));
	}
	
	@PostMapping("modify")
	public String modify(OrderVO order, RedirectAttributes rttr) {
		if(service.modify(order)) {
			rttr.addFlashAttribute("result", "succes");
		}
		return "redirect:/order/list";
	}
	
	@PostMapping("remove")
	public String remove(@RequestParam("reciept_no") String reciept_no, RedirectAttributes rttr) {
		if(service.remove(reciept_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/order/list";
	}
}
