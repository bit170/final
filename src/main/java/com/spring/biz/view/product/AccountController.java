package com.spring.biz.view.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.product.ProductService;

@Controller
public class AccountController {
	@Autowired
	private ProductService productService;
	
	
	public AccountController() {
	}
	
	@RequestMapping(value = "/insert-canvas.do")
	public String insertcanvas() {
		return "product/insert-canvas";
	}
}
