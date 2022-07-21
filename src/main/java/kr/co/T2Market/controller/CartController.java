package kr.co.T2Market.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.T2Market.domain.CartDTO;
import kr.co.T2Market.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;

	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart, HttpServletRequest request) {
		
		//카트 등록
		
		int result = cartService.addCart(cart);
		
		return result + "";
	}
	
	@GetMapping("/cart/{member_id}")
	public String cartPageGET(@PathVariable("member_id") String member_id , Model model) {
		
		model.addAttribute("cartInfo", cartService.getCartList(member_id));
		
		return "/cart";
	}
	
	@PostMapping("/cart/update")
	public String updateCartPOST(CartDTO cart) {
		
		cartService.modifyCount(cart);
		
		return "redirect:/cart/" + cart.getMember_id();
	
	}
	
	@PostMapping("/cart/delete")
	public String deleteCartPOST(CartDTO cart) {
		
		cartService.deleteCart(cart.getCart_no());
		
		return "redirect:/cart/" + cart.getMember_id();
	}
	
}
