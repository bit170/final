package com.spring.biz.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.member.S_MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	public MemberController() {
		System.out.println(">>> MemberController() 객체 생성");
	}
	
//	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
//	public String idCheck(String id, Model model) {
//		System.out.println("idCheck()메소드 실행");
//		int result = -1;
//		result = memberService.checkId(id);
//		if(result>0) {
//			model.addAttribute("idChecked", "ok");
//		}
//		return "index.jsp";
//	}
	
	@RequestMapping(value = "/account.do", method = RequestMethod.GET)
	public String account(Model model) {
		System.out.println("account() 실행");
		
		return "redirect:account-wishlist.jsp";
	}
	
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	public @ResponseBody int idCheck(HttpServletRequest request) {
		System.out.println("idCheck()");
		String signup_id = request.getParameter("signup_id");
		System.out.println(signup_id);
		return memberService.checkId(signup_id);
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login(S_MemberVO svo, Model model,HttpSession session) {
		System.out.println(">> 로그인 메소드 실행 - POST");
		System.out.println("vo : " + svo);
		System.out.println("id : " + svo.getId()+"pwd: "+svo.getPwd());
		System.out.println("MemberDAO : " + memberService);
		
		S_MemberVO sMember = memberService.getSMember(svo);
		if (sMember != null) {
			System.out.println("> 로그인 성공!!");
			MemberVO member = memberService.getMember(svo);
			System.out.println(member.getName());
			model.addAttribute("member", member);
			return "/WEB-INF/views/main/index.jsp";
		} else {
			System.out.println("> 로그인 실패~~~");
			return "index.do";
		}
	}
	
	/*	@ModelAttribute : 모델의 속성값으로 저장(속성명 별도 지정)
	 	별도 명칭 부여 안하면 <데이터 타입>의 첫글자를 소문자로 가진 명칭으로 사용됨.
	 *	@ModelAttribute MemberVO : 속성명 MemberVO 
	 	@ModelAttribute("Member") MemberVO	---> 속성명 Member 사용
	 */
	
//	@RequestMapping(value="/login.do", method = RequestMethod.GET)
//	public String loginView(@ModelAttribute("Member") MemberVO vo) {
//		System.out.println(">>> 로그인 처리 - login 뷰로 이동");
//		vo.setId("test1");
//		vo.setPwd("test1");
//		return "login.jsp";
//	}
	
	@RequestMapping(value = "/logout.do",method = RequestMethod.POST)
	public String logout(HttpSession session, SessionStatus status,Model model) {
		
		status.setComplete();
		//redirect 후 session 초기화
		return "redirect:index.jsp";
	}	
	
//	@RequestMapping("/getMember.do")
//	public String getMember(MemberVO vo, Model model) {
//		MemberVO member = memberService.getMember(vo);
//
//		model.addAttribute("member", member);
//		System.out.println("member : " + member);
//		
//		return "account-profile.jsp";
//	}
	
	@RequestMapping("/updateMember.do")
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		String name = vo.getName();
		System.out.println("name : " + name);
		System.out.println(">>> 프로필 수정 처리");
		System.out.println("member : " + vo);
		memberService.updateMember(vo);
		
		return "redirect:account-profile.jsp";
	}
	
}
