package com.spring.biz.view.address;

import javax.servlet.http.HttpSession;

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
		System.out.println("insertAddress() 실행");
		String id = vo.getId();
		String a_name = vo.getA_name();
		System.out.println("address : " + vo);
		System.out.println("id : " + id + "의 주소지 :" + a_name +" 입력 성공!!");
		addrService.insertAddr(vo);
		
		
		// 결제페이지 완료 시 결제페이지로 포워딩
//		return "/WEB-INF/views/account/account-address.jsp";
		return "/payment.do";
		
	}
	
	@RequestMapping("/updateAddress.do")
	public String updateAddress(@ModelAttribute("address") AddressVO vo) {
		System.out.println("updateAddress() 실행");
		String id = vo.getId();
		String a_name = vo.getA_name();
		System.out.println("id : " + id + "의 주소지 :" + a_name + " 수정 성공!!");
		addrService.updateAddr(vo);
		
		
		return "redirect:/WEB-INF/views/account/account-address.jsp";
	}
	
	@RequestMapping(value = "/getAddress.do")
	public String getAddress(AddressVO vo, Model model, HttpSession session) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		System.out.println("getAddress() 생성");
		
		if(vo.getId() == null & mvo.getId() != null) {
			String id = mvo.getId();
			vo.setId(id);
		}
			
		addrService.getAddr(vo);
		model.addAttribute("address", vo);
		System.out.println("address : " + vo);
		
		return "/WEB-INF/views/account/account-address.jsp";
	}
	

}
