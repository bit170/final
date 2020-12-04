package com.spring.biz.view.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Controller
public class AccountController {
	
	@Autowired
	private ProductService productService;
	
	public AccountController() {
		System.out.println("AccountController() 객체 생성");
	}

	@RequestMapping(value = "/getMyCanvas.do",method = RequestMethod.GET)
	public String getMyCanvas(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		List<ProductVO> myProductList = productService.getMyProduct(id);
		model.addAttribute("myProductList", myProductList);
		
		return "account/account-myCanvas";
	}
	
	@RequestMapping(value = "/update-canvas.do", method = RequestMethod.GET)
	public String updateCanvas(HttpServletRequest request, Model model) {
		String p_code = request.getParameter("p_code");
		ProductVO product = productService.getProduct(p_code);
		model.addAttribute("myProduct", product);
		List<PImageFileVO> productImgs = productService.getImages(p_code);
		model.addAttribute("productImgs", productImgs);
		return "product/update-canvas";
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
