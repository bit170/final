package com.spring.biz.view.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	
	
	public MainController() {
		System.out.println("mainController 객체 생성");
	}

	@RequestMapping("/main.do")
	public String main() {
		return "/WEB-INF/views/main/index.jsp";
	}
}
