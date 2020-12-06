package com.spring.biz.view.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
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
import com.spring.biz.order.DeliveryService;
import com.spring.biz.order.DeliveryVO;
import com.spring.biz.order.OrdService;
import com.spring.biz.order.OrdVO;
import com.spring.biz.order.S_OrdVO;
import com.spring.biz.order.SellVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Controller
@SessionAttributes({ "cart", "cartList", "member", "order" })
public class OrderController {

	@Autowired
	private AddressService addrService;
	@Autowired
	private OrdService ordService;
	@Autowired
	private ProductService productService;
	@Autowired
	private DeliveryService deliveryService;

	@RequestMapping("/getOrder-tracking.do")
	public String orderTracking() {

		return "order/order-tracking";
	}

	@RequestMapping(value = "/checkout.do", method = RequestMethod.GET)
	public String getAddressCheckout(AddressVO vo, Model model, HttpSession session) {
		MemberVO mvo = (MemberVO) session.getAttribute("member");
		ProductVO pvo = (ProductVO) session.getAttribute("product");
		System.out.println("getAddress() 생성");

		if (vo.getId() == null & mvo.getId() != null) {
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
		sess.setMaxInactiveInterval(60 * 60);
		System.out.println("클릭한 상품 " + (ProductVO) sess.getAttribute("product"));

		if (sess.getAttribute("cartList") != null) {
			List<CartVO> cartList = (List<CartVO>) sess.getAttribute("cartList");
			System.out.println("세션 장바구니 정보 : " + (List<CartVO>) sess.getAttribute("cartList"));
			CartVO cvo = new CartVO();
			System.out.println("지금 장바구니에 담긴 작품 : " + sess.getAttribute("product"));
			ProductVO pvo = (ProductVO) sess.getAttribute("product");
			if (pvo != null) {
				cvo.setP_code(pvo.getP_code());
				cvo.setP_name(pvo.getP_name());
				cvo.setC_price(pvo.getPrice());
				cvo.setA_id(pvo.getA_id());
				cartList.add(cvo);

				int index = 1;
				for (CartVO cart : cartList) {
					System.out.println(index++ + "번째 장바구니 작품정보 : " + cart);
				}

				int total = 0;
				for (CartVO cart : cartList) {
					total +=Integer.parseInt(cart.getC_price());
				}
				String tt = Integer.toString(total);
				
				System.out.println("total : " + total);
				sess.setAttribute("total", tt);
				System.out.println("******* total : " + sess.getAttribute("total"));
				model.addAttribute("cartList", cartList);
			} else if (pvo == null) {
				System.out.println("해당 작품이 존재하지 않습니다.");

			}

		} else if (sess.getAttribute("cartList") == null) {
			System.out.println("세션 장바구니가 비었습니다.");
			List<CartVO> cartList = new ArrayList<>();
			CartVO cvo = new CartVO();
			System.out.println("지금 장바구니에 담긴 작품 : " + sess.getAttribute("product"));
			ProductVO pvo = (ProductVO) sess.getAttribute("product");
			if (pvo != null) {
				cvo.setP_code(pvo.getP_code());
				cvo.setP_name(pvo.getP_name());
				cvo.setC_price(pvo.getPrice());
				cvo.setA_id(pvo.getA_id());
				cartList.add(cvo);

				int total = 0;
				int index = 1;
				for (CartVO cart : cartList) { 
					System.out.println(index++ + "번째 장바구니 작품정보 : " + cart);
					total +=Integer.parseInt(cart.getC_price());
					System.out.println("total : " + total);
				}
				String tt = Integer.toString(total);
				
				model.addAttribute("cartList", cartList);
				model.addAttribute("total", tt);
			} else if (pvo == null) {
				System.out.println("해당 작품이 존재하지 않습니다.");
			}
		}
		return "redirect:getProductList.do";
//	}
	}

	// 장바구니 작품 하나만 지우기
	@RequestMapping("/deleteCart.do")
	public String deleteCart(@RequestParam String p_code, HttpSession sess) {

		List<CartVO> cartList = (List<CartVO>) sess.getAttribute("cartList");
		int index = 0;
		for (CartVO cart : cartList) {
			index++;
			if (cart.getP_code() == p_code) {
				System.out.println(p_code);
				System.out.println(cart.getP_code());
				System.out.println(index);
			}
		}
		cartList.remove(index - 1);

		return "redirect:getCart.do";
	}

	// 장바구니 전체 비우기
	@RequestMapping("/deleteCartList.do")
	public String deleteCartList(HttpSession session) {

		List<CartVO> cartList = (List<CartVO>) session.getAttribute("cartList");
		cartList.removeAll(cartList);

		return "redirect:getCart.do";

	}

	@RequestMapping("/getPayment.do")
	public String getPayment(HttpSession session, Model model) {

		AddressVO avo = (AddressVO) session.getAttribute("address");
		System.out.println("주소확인 : " + avo.getAddress());
		System.out.println("우편번호 확인 : " + avo.getPost());
		System.out.println("total : " + session.getAttribute("total"));

		return "order/checkout-payment";
	}

	@RequestMapping("/review.do")
	public String getReview(HttpSession session, Model model) {

		if ((List<CartVO>) session.getAttribute("cartList") != null) {
			System.out.println("cart값 true ");

			List<CartVO> cartList = (List<CartVO>) session.getAttribute("cartList");
			
			System.out.println("total : " + session.getAttribute("total"));
			
			MemberVO mvo = (MemberVO) session.getAttribute("member");
			String total = (String) session.getAttribute("total");
			OrdVO ovo = new OrdVO();
			ovo.setId(mvo.getId());
			ovo.setO_code(randomNum(6));
			ovo.setTotal(total);


			ordService.insertOrd(ovo);
			System.out.println(">> ordVO : " + ovo);
			session.setAttribute("order", ovo);
			

//			S_Ord table에 insert
			S_OrdVO svo = new S_OrdVO();
			
//				Delivery table 에 insert
			DeliveryVO dvo = new DeliveryVO();
			
			AddressVO avo = (AddressVO) session.getAttribute("address");
			System.out.println("주소확인 : " + avo.getAddress());
			System.out.println("우편번호 확인 : " + avo.getPost());
			
			for(CartVO cvo : cartList) {
				dvo.setId(mvo.getId());
				svo.setO_code(ovo.getO_code());
				svo.setP_code(cvo.getP_code());
				dvo.setO_code(ovo.getO_code());
				dvo.setP_code(cvo.getP_code());
				dvo.setD_address(avo.getAddress());
				dvo.setD_post(avo.getPost());
				System.out.println("P_code : " + cvo.getP_code());
				svo.setA_id(productService.getA_Id(cvo.getP_code()));
				svo.setP_price(productService.getPrice(cvo.getP_code()));
				System.out.println("A_id : " + productService.getA_Id(cvo.getP_code()));
				System.out.println("dvo : " + dvo);
				
				ordService.insertS_Ord(svo);
				deliveryService.insertDelivery(dvo);
				
			}
			
			// 결제완료작품 가격 0 원으로 변경
			for (CartVO cvo : cartList) {
				productService.updatePrice(cvo.getP_code());
			}
		}
		return "redirect:finalreview.do";
	}
	
	@RequestMapping("/finalreview.do")
	public String finalreview() {
		return "order/checkout-review";
	}
	
	@RequestMapping("/complete.do")
	public String complete() {
		return "order/checkout-complete";
	}
	
	@RequestMapping("/getOrderList.do")
//	@RequestParam 수정필요
	public String getOrderList(@RequestParam("id")String id, Model model) {
		System.out.println("id : " + id);
		List<OrdVO> orderList = (List<OrdVO>) ordService.getOrdList(id);
		String o_code = "";

		for(OrdVO ovo : orderList) {
			System.out.println("ovo : " + ovo);
			o_code = ovo.getO_code(); // s_ord 검색을 위해 저장
		}
		
		// o_code 로 S_OrderList 받아오기
		System.out.println(o_code);
		List<S_OrdVO> svoList = (List<S_OrdVO>) ordService.getS_OrdList(o_code);
		List<ProductVO> sOderList = new ArrayList<>();
		
		for(S_OrdVO svo : svoList) {
			System.out.println("svo : " + svo);
			String p_code = svo.getP_code();
			sOderList.add((ProductVO) productService.getProduct(p_code));
			System.out.println("sOderList : " + (ProductVO) productService.getProduct(p_code));
		}
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("sOrderList", sOderList);
		model.addAttribute("sOrder", svoList);
		return "account/account-orders";
	}
	
	
	@RequestMapping("getSellList.do")
	public String getSellList(@RequestParam("id")String a_id, Model model) {
		System.out.println("getSellList() 실행!!!");
		System.out.println(a_id);
		
		List<SellVO> sellList = ordService.getSellList(a_id);
		model.addAttribute("sellList", sellList);
		
		return "account/account-sell";
	}
	
	

	// o_code 랜덤키 생성을 위한 메서드 (연희) (파라미터에 원하는 자릿수 넣기)
	public static String randomNum(int len) {

		Random rand = new Random();
		String numStr = "";

		for (int i = 0; i < len; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;

		}
		return numStr;
	}

}
