package com.spring.biz.view.follow;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.artist.ArtistVO;
import com.spring.biz.follow.FollowService;
import com.spring.biz.follow.FollowVO;
import com.spring.biz.member.MemberVO;

@Controller

public class FollowController {
	
	@Autowired
	private FollowService followService;
	
	public FollowController() {
		System.out.println("~~~~~FollowController() 객체 생성~~~~~");
	}
	
	//팔로우추가,취소(작가페이지에서)
	@RequestMapping(value = "/Follow.do", method=RequestMethod.GET)
	public String Follow(String a_id, String page, HttpSession sess) {
		System.out.println("Controller의 Follow!!!");
		MemberVO memberVO = (MemberVO)sess.getAttribute("member");
		System.out.println("id : " + memberVO.getId() +"a_id : " + a_id);
		
		FollowVO fvo = new FollowVO();
		fvo.setId(memberVO.getId());
		fvo.setA_id(a_id);
		
		//팔로우 여부 확인
		String followNow = followService.selectFollow(fvo);
		if(followNow != null) {	//이미 팔로우되어있는 경우, 팔로우취소
			System.out.println("이미 팔로우 중인 작가를 취소합니다.");
			followService.deleteFollow(fvo);
		}else {		//팔로우되어있지 않은 경우, 팔로우추가
			System.out.println("이 작가를 팔로우합니다.");
			System.out.println("id : " + fvo.getId()+"a_id : " + fvo.getA_id());
			followService.insertFollow(fvo);
		}
		
		String goPage = null;
		if(page.equals("all"))
			goPage = "redirect:getArtistList.do";
		else if(page.equals("single"))
			goPage = "redirect:getArtist.do?id=" + a_id;
		return goPage;
	}
	
	//팔로우취소(마이페이지에서)
	@RequestMapping(value = "/deleteFollow.do", method=RequestMethod.GET)
	public String deleteFollow(FollowVO vo) {
		System.out.println("Controller의 deleteFollow!!!");
		System.out.println("vo : " + vo);
		System.out.println("id : " + vo.getId()+"a_id: "+vo.getA_id());
		followService.deleteFollow(vo);
		return "account/account-follows";
	}
	//모든팔로우취소(마이페이지에서)
	@RequestMapping(value = "/deleteAllFollow.do", method=RequestMethod.GET)
	public String deleteAllFollow(String id) {
		System.out.println("Controller의 deleteAllFollow!!!");
		followService.deleteAllFollow(id);
		return "account/account-follows";
	}
	//팔로우목록(마이페이지에서)
	@RequestMapping(value = "/getFollowList.do", method=RequestMethod.GET)
	public String getFollowList(String id, Model model) {
		System.out.println("Controller의 getFollowList!!!");
		
		List<ArtistVO> list = followService.getFollowList(id);
		model.addAttribute("followList", list);
		System.out.println(list.isEmpty());
		return "account/account-follows";
	}
}
