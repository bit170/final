package com.spring.biz.view.checkout;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;
import com.spring.biz.member.MemberVO;

@Controller
@SessionAttributes({"member","address"})
public class CheckoutController {
	@Autowired
	private AddressService addrService;
	
	public CheckoutController() {
		System.out.println(">>>> CheckoutController() 객체 생성");
	}

	@RequestMapping("/checkout.do")
	public String checkoutAddress(AddressVO vo, Model model, HttpSession session) {
		System.out.println("checkoutAddress() 실행");
		
		MemberVO mvo = (MemberVO) session.getAttribute("member");
		vo.setId(mvo.getId());
		addrService.getAddr(vo);
		model.addAttribute("address", vo);
		System.out.println("address : " + vo);
		
		
		return "order/checkout-address";
	}
	
	@RequestMapping("/payment.do")
	public String payment() {
		return "order/checkout-payment";
	}      
	
	@RequestMapping("/review.do")
	public String review() {
		return "order/checkout-review";
	}
	
	@RequestMapping("/complete.do")
	public String complete() {
		return "order/checkout-complete";
	}
	
}
