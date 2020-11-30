package com.spring.biz.view.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;


@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	private ArtistService artistService;
	
	public MainController() {
		System.out.println("mainController 객체 생성");
	}

	@RequestMapping("main.do")
	public String main(Model model) {
		//List<ProductVO> list = productService.getMainProduct();
		//model.addAttribute("MainProduct", list);
		
		return "main/index";

	}
	@RequestMapping(value = "search.do", method = RequestMethod.POST)
	public void search(HttpServletRequest request, Model model) {
		System.out.println("ajax -> search()");
		String keyword = request.getParameter("keyword");
		System.out.println("검색어 : "+keyword);
		try {
			List<ProductVO> productList = productService.searchProduct(keyword);
			if(productList!=null) {
				model.addAttribute("searchProduct", productList);
			}
			//productList를 파라미터로 해서 작품 메인이미지리스트 받아와야함.
			
			int result = artistService.
			List<ArtistVO> artistList = artistService.searchByName(keyword);
			if(artistList != null) {
				model.addAttribute("searchArtist", artistList);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

