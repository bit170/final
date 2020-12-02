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
	@Autowired
	private ArtistService artistService;
	
	public MainController() {
		System.out.println("mainController 객체 생성");
	}

	@RequestMapping("main.do")
	public String main(Model model) {
		List<ProductVO> plist = productService.getMainProduct();
		model.addAttribute("MainProduct", plist);
		List<ArtistVO> alist = artistService.getMainArtist();
		
		
		return "main/index";

	}
//	@RequestMapping(value = "searchable.do", method = RequestMethod.POST)
//	public @ResponseBody int search(HttpServletRequest request, Model model) {
//		System.out.println("ajax -> searchable()");
//		String keyword = request.getParameter("keyword");
//		System.out.println("검색어 : "+keyword);
//		
//		return artistService.searchable(keyword);
//	}
	@RequestMapping(value = "search.do", method = RequestMethod.POST)
	public @ResponseBody Map<String, List> search(HttpServletRequest request, Model model) {
		System.out.println("ajax -> search()");
		String keyword = request.getParameter("keyword");
		System.out.println("검색어 : "+keyword);
		Map<String, List> result = new HashMap<String, List>();
		List<ProductVO> productList = productService.searchProduct(keyword);
		System.out.println(productList);
//		int result = 0;
		if(productList!=null) {
			result.put("productList", productList);
//			model.addAttribute("searchProduct", productList);
//			result += 1;
		}
		//productList를 파라미터로 해서 작품 메인이미지리스트 받아와야함.
		
		List<ArtistVO> artistList = artistService.searchByName(keyword);
		if(artistList != null) {
			result.put("artistList", artistList);
//			model.addAttribute("searchArtist", artistList);
//			result += 10;
		}
		return result;
	}
}

