package com.spring.biz.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.user.MemberService;
import com.spring.biz.user.MemberVO;

//@Controller
//@SessionAttributes("member")
public class MemberController {
	
//	@Autowired
	private MemberService memberService;
	
//	@RequestMapping("/getMember.do")
	public String getMember(MemberVO vo, Model model) {
		MemberVO member = memberService.getMember(vo);
		vo.setId("test");
		vo.setName("test");
		vo.setPhone("010-222-3234");
		vo.setNickname("테스트");
		vo.setEmail("test@test.com");

		model.addAttribute("member", member);
		System.out.println("member : " + member);
		
		return "account-profile.jsp";
	}
	
	@RequestMapping("/updateMember.do")
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		System.out.println(">>> 프로필 수정 처리");
		System.out.println("member : " + vo);
		memberService.updateMember(vo);
		
		return "redirect:account-profile.do";
	}
	
}
