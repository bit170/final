package com.spring.biz.view.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.biz.order.OrdService;
import com.spring.biz.order.OrdVO;

@Controller
public class AccountController {
	
	@Autowired
	private OrdService ordService;
	
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
		
		for(OrdVO ovo : orderList) {
			System.out.println("ovo : " + ovo);
		}
		model.addAttribute("orderList", orderList);
		
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
