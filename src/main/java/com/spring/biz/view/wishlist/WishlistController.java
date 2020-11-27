package com.spring.biz.view.wishlist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"wishlist", "product", })
public class WishlistController {

	@RequestMapping("/insertWishlist.do")
	public String insertWishlist() {
		
		return "account/account-wishlist";
	}
	@RequestMapping("/updateWishlist.do")
	public String updateWishlist() {
		return "account/account-wishlist";
	}
	@RequestMapping("/deleteWishlist.do")
	public String deleteWishlist() {
		return "account/account-wishlist";
	}
	@RequestMapping("/getWishlist.do")
	public String getWishlist() {
		return "account/account-wishlist";
	}
	@RequestMapping("/getWishlists.do")
	public String getWishlists() {
		return "account/account-wishlist";
	}
	
	
}
