package com.spring.biz.view.account;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.biz.order.OrdService;
import com.spring.biz.order.OrdVO;
import com.spring.biz.order.S_OrdVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Controller
public class AccountController {
	
	@Autowired
	private OrdService ordService;
	
	@Autowired
	private ProductService productService;
	
	public AccountController() {
		System.out.println("AccountController() 객체 생성");
	}

	@RequestMapping("/getMyCanvas.do")
	public String getMyCanvas() {
		return "account/account-myCanvas";
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
		return "account/account-orders";
	}
	
	@RequestMapping("/insert-canvas.do")
	public String insertcanvas() {
		return "product/insert-canvas";
	}
	
	@RequestMapping(value = "/account-myCanvas.do")
	public String accountmyCanvas() {
		return "account/account-myCanvas";
	}	
}
