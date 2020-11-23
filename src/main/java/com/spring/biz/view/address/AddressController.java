package com.spring.biz.view.address;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;
import com.spring.biz.member.MemberVO;

@Controller
@SessionAttributes({"address","member"})
public class AddressController {
	@Autowired
	private AddressService addrService;
	
	public AddressController() {
		System.out.println(">>>> AddressController() 객체 생성");
	}
	
	@RequestMapping("/insertAddress.do")
	public String insertAddress(@ModelAttribute("address") AddressVO vo) {
		String id = vo.getId();
		String a_name = vo.getA_name();
		String cnt = vo.getCnt();
		System.out.println("id : " + id + "의 주소지 :" + a_name +"입력 성공!!");
		addrService.insertAddr(vo);
		
		return "redirect:/WEB-INF/views/account/account-address.jsp";
		
	}
	
	@RequestMapping("/updateAddress.do")
	public String updateAddress(@ModelAttribute("address") AddressVO vo) {
		String id = vo.getId();
		String a_name = vo.getA_name();
		String cnt = vo.getCnt();
		System.out.println("id : " + id + "의 주소지 :" + a_name + "수정 성공!!");
		addrService.updateAddr(vo);
		
		return "redirect:checkout-address.jsp";
	}
	
	@RequestMapping("/getAddress.do")
	public String getAddress(AddressVO vo, Model model) {
		AddressVO addr = addrService.getAddr(vo);
		
		model.addAttribute("address", addr);
		System.out.println("address : " + addr);
		
		return "/WEB-INF/views/account/checkout-address.jsp";
	}
	
	
}
