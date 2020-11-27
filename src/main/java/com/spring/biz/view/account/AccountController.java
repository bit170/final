package com.spring.biz.view.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
