package com.spring.biz.view.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Controller
@SessionAttributes("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	public ProductController() {
		System.out.println(">>>> ProductController() 객체 생성");
	}

//	@RequestMapping(value="/getProduct.do", method = RequestMethod.POST)
//	public String getProduct(ProductVO vo, Model model) {
//		ProductVO product = productService.getProduct(vo);
//		model.addAttribute("product", product);
//		System.out.println("작품코드 : " + vo.getP_code() + "작품명 : " + vo.getP_name());
//		
//		return "shop-single.jsp";
//	}
	
	@RequestMapping(value="/getProductList.do", method = RequestMethod.GET)
	public String getBoardList(ProductVO vo, Model model) {
		System.out.println(">>> 게시글 전체 목록 보여주기");
		
		List<ProductVO> list = productService.getProductList(vo);
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		System.out.println(list);
		return "shop-boxed-ls.jsp";
	}


}
