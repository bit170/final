package com.spring.biz.view.artist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Controller

public class ArtistController {
	
	@Autowired
	private ArtistService artistService;
	private ProductService productService;
	
	public ArtistController() {
		System.out.println("~~~~~ArtistController() 객체 생성~~~~~");
	}
	
	@RequestMapping(value="/searchByName.do", method=RequestMethod.POST)
	public String searchByName(String nickname, Model model) {
		System.out.println("Controller의 searchByName~!");
		
		List<ArtistVO> list = artistService.searchByName(nickname);
		model.addAttribute("artistList", list);
		System.out.println(list.isEmpty());
		return "artist/artist-boxed-ft";
	}
	@RequestMapping(value="/getArtist.do", method=RequestMethod.GET)
	public String getArtist(@RequestParam String a_id, Model model) {
		System.out.println("Controller의 getArtist!!!");
		System.out.println(a_id);
		ArtistVO avo = artistService.getArtist(a_id);
		model.addAttribute("artist", avo);
		System.out.println(avo);
		
		return "artist/artist-single";
	}
	@RequestMapping(value = "/getArtistList.do", method=RequestMethod.GET)
	public String getArtistList(Model model) {
		System.out.println("Controller의 getArtistList!!!");
		
		List<ArtistVO> list = artistService.getArtistList();
		model.addAttribute("artistList", list);
		System.out.println(list.isEmpty());
		return "artist/artist-boxed-ft";
	}
	/*
	 * @RequestMapping(value="/getAllPrinting.do", method=RequestMethod.GET) public
	 * String getById(String id, Model model) {
	 * System.out.println("Controller의 getAllPrinting!!!");
	 * 
	 * //작가상세페이지의 id로 product쪽에서 검색 list 출력 //productServiceImpl, dao, mapper에 만들기
	 * List<ProductVO> plist = productService.getById(id);
	 * model.addAttribute("productList", plist);
	 * System.out.println(plist.isEmpty());
	 * 
	 * return "artist-single.jsp"; }
	 */ 
}
