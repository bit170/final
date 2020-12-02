package com.spring.biz.view.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;
import com.spring.biz.member.MemberVO;
import com.spring.biz.order.CartVO;
import com.spring.biz.product.ProductVO;

@Controller
@SessionAttributes({"cart","cartList","member"})
public class OrderController {
	
	@Autowired
	private AddressService addrService;

	@RequestMapping("/getOrder-tracking.do")
	public String orderTracking() {
		return "order/order-tracking";
	}
	
	@RequestMapping(value = "/getAddress.do" , method = RequestMethod.GET)
	public String getAddressCheckout(AddressVO vo, Model model, HttpSession session) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		ProductVO pvo = (ProductVO) session.getAttribute("product");
		System.out.println("getAddress() 생성");
		
		if(vo.getId() == null & mvo.getId() != null) {
			String id = mvo.getId();
			vo.setId(id);
		}

		session.setAttribute("product", pvo);
		addrService.getAddr(vo);
		model.addAttribute("address", vo);
		System.out.println("address : " + vo);
		
		return "order/checkout-address";
	}
	
	@RequestMapping("/getCart.do")
	public String getCart(Model model) {
		
		model.addAttribute("cartList");
		return "order/cart";
	}
	
	@RequestMapping("/insertCart.do")
	public String insertCart(HttpSession sess, Model model) {
		sess.setMaxInactiveInterval(60*60);
		System.out.println("클릭한 상품 " + (ProductVO) sess.getAttribute("product"));
		
		if(sess.getAttribute("cartList") != null) {
			List<CartVO> cartList = (List<CartVO>) sess.getAttribute("cartList");
			System.out.println("세션 장바구니 정보 : " + (List<CartVO>) sess.getAttribute("cartList"));
			CartVO cvo = new CartVO();
			System.out.println("지금 장바구니에 담긴 작품 : " + sess.getAttribute("product"));
			ProductVO pvo = (ProductVO) sess.getAttribute("product");
			if(pvo != null) {
				cvo.setP_code(pvo.getP_code());
				cvo.setP_name(pvo.getP_name());
				cvo.setc_price(pvo.getPrice());
				cartList.add(cvo);
				
				int index = 1;
				for(CartVO cart:cartList) {
					System.out.println(index++ + "번째 장바구니 작품정보 : " + cart);
				}
				model.addAttribute("cartList", cartList);
			}
			else if (pvo == null) {
				System.out.println("해당 작품이 존재하지 않습니다.");
				
			}
			
		}else if(sess.getAttribute("cartList") == null) {
			System.out.println("세션 장바구니가 비었습니다.");
			List<CartVO> cartList = new ArrayList<>();
			CartVO cvo = new CartVO();
			System.out.println("지금 장바구니에 담긴 작품 : " + sess.getAttribute("product"));
			ProductVO pvo = (ProductVO) sess.getAttribute("product");
			if(pvo != null) {
				cvo.setP_code(pvo.getP_code());
				cvo.setP_name(pvo.getP_name());
				cvo.setc_price(pvo.getPrice());
				cartList.add(cvo);
				
				int index = 1;
				for(CartVO cart:cartList) {
					System.out.println(index++ + "번째 장바구니 작품정보 : " + cart);
				}
				model.addAttribute("cartList", cartList);
			}
			else if (pvo == null) {
				System.out.println("해당 작품이 존재하지 않습니다.");
			
		}
		}
		
		return "redirect:getProductList.do";
	}
	
	// 장바구니 작품 하나만 지우기
	@RequestMapping("/deleteCart.do")
	public String deleteCart(@RequestParam String p_code, HttpSession sess) {
		
		List<CartVO> cartList = (List<CartVO>) sess.getAttribute("cartList");
		int index = 0;
		for(CartVO cart : cartList) {
			index++;
			if(cart.getP_code() == p_code) {
				System.out.println(index);
			}
		}
		cartList.remove(index-1);
		
		
		return "redirect:getCart.do";
	}
		
	// 장바구니 전체 비우기
	@RequestMapping("/deleteCartList.do")
	public String deleteCartList(HttpSession session) {
		
		// 세션에 저장되있는 카트 비우기 -> 로그인은 유지 가능?
		List<CartVO> cartList = (List<CartVO>)session.getAttribute("cartList");
		cartList.removeAll(cartList);
		
		
		return "redirect:getCart.do";
		
	}
	
	@RequestMapping("/getPayment.do")
	public String getPayment(HttpSession session) {
		
		if((List<CartVO>)session.getAttribute("cartList") != null) {
			List<CartVO> cartList = (List<CartVO>)session.getAttribute("cartList");
			int total=0;
			for(CartVO cart : cartList)
				cart.setc_price(cart.getc_price()+total);
		}
		
		return "order/checkout-payment";
	}
	
}
