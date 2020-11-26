package com.spring.biz.view.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;


@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	
	public MainController() {
		System.out.println("mainController 객체 생성");
	}

	@RequestMapping("main.do")
	public String main(Model model) {
		List<ProductVO> list = productService.getMainProduct();
		model.addAttribute("MainProduct", list);
		
		return "main/index";

	}
}

