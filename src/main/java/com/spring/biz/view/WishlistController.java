package com.spring.biz.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Controller
@SessionAttributes("wishlist")
public class WishlistController {
	@Autowired
	private WishlistService wishlistService;
	
	public WishlistController() {
		System.out.println(">>>> WishlistController() 객체 생성");
	}
	
	@RequestMapping("/getWishlist.do")
	public String getWishlist(WishlistVO vo, Model model) {
		WishlistVO wishlist = wishlistService.getWishlist(vo);
		model.addAttribute("wishlist", wishlist);
		System.out.println("wishlist : " + wishlist);
		
		return "account-wishlist.jsp";
	}
	
	@RequestMapping("/getWishlists.do")
	public String getWishlists(WishlistVO vo, Model model) {
		WishlistVO wishlist = wishlistService.getWishlist(vo);
		model.addAttribute("wishlist", wishlist);
		System.out.println("wishlist : " + wishlist);
		
		return "account-wishlist.jsp";
	}
}
