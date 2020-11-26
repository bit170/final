package com.spring.biz.view.checkout;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;

@Controller
@SessionAttributes({"member","address"})
public class CheckoutController {
	@Autowired
	private AddressService addrService;
	
	public CheckoutController() {
		System.out.println(">>>> CheckoutController() 객체 생성");
	}

	@RequestMapping("/checkout.do")
	public String checkoutAddress(AddressVO vo, Model model) {
		System.out.println("checkoutAddress() 실행");
		
		addrService.getAddr(vo);
		model.addAttribute("address", vo);
		System.out.println("address : " + vo);
		
		
		return "/WEB-INF/views/order/checkout-address.jsp";
	}
	
	@RequestMapping("/payment.do")
	public String payment() {
		return "/WEB-INF/views/order/checkout-payment.jsp";
	}
	
	@RequestMapping("/review.do")
	public String review() {
		return "/WEB-INF/views/order/checkout-review.jsp";
	}
	
	@RequestMapping("/complete.do")
	public String complete() {
		return "/WEB-INF/views/order/checkout-complete.jsp";
	}
	
}
