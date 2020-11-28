package com.spring.biz.view.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.product.ProductService;

@Controller
public class AccountController {
	
	public AccountController() {
		System.out.println("AccountController() 객체 생성");
	}

	@RequestMapping("/getMyCanvas.do")
	public String getMyCanvas() {
		return "account/account-myCanvas";
	}
	
	@RequestMapping("/getOrderList.do")
	public String getOrderList() {
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
