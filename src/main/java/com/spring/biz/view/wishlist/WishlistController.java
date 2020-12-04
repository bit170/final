package com.spring.biz.view.wishlist;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.member.MemberVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Controller
@SessionAttributes({ "wishlist", "product" })
public class WishlistController {

	@Autowired
	private WishlistService wishService;
	@Autowired
	private ProductService productService;

	@RequestMapping("/insertWishlist.do")
	public String insertWishlist(@RequestParam("p_code") String p_code, HttpSession session, Model model) {
		System.out.println("***** insertWishlist 실행!! ******");

		MemberVO mvo = (MemberVO) session.getAttribute("member");

		int result = wishService.getWish(mvo.getId(), p_code);
		if (result <= 0) {

			WishlistVO wvo = new WishlistVO();
			wvo.setId(mvo.getId());
			wvo.setP_code(p_code);

			wishService.insertWishlist(wvo);
//			model.addAttribute("wishlist", wvo);
			System.out.println("추가된 위시리스트 : " + wvo);
		}
		return "redirect:getProduct.do?p_code=" + p_code;
	}

	@RequestMapping("/deleteWishlist.do")
	public String deleteWishlist() {
//		wishService.deleteWishlist(vo);
		return "account/account-wishlist";
	}

	@RequestMapping("/getWishlists.do")
	public String getWishlists(@RequestParam("id") String id, Model model) {
		List<WishlistVO> wvos = (List<WishlistVO>) wishService.getWishlists(id);
		System.out.println("wvos : " + wvos);
		List<ProductVO> wishlists = new ArrayList<ProductVO>();
		for (WishlistVO wvo : wvos) {
			System.out.println("wishlist 품목 : " + wvo);
			wishlists.add(productService.getProduct(wvo.getP_code()));
		}
		model.addAttribute("wishlists", wishlists);
		return "account/account-wishlist";
	}

}
