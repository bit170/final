package com.spring.biz.view.artist;

import java.util.List;

import org.springframework.ui.Model;

import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;

public class ArtistController {

	private ArtistService artistService;
	
	public String getArtist(ArtistVO vo, Model model) {
		ArtistVO artist = artistService.getArtist(vo);
		model.addAttribute("artist ", artist);
		System.out.println("artist : " + artist);
		
		return "artist-single.jsp";
	}
	
	public String getArtistList(ArtistVO vo, Model model) {
		List<ArtistVO> list = artistService.getArtistList(vo);
		model.addAttribute("artistList", list);
		return "artist-boxed-ft.jsp";
	}
	
	public String insertArtist(ArtistVO vo) {
		artistService.insertArtist(vo);
		return "redirect:getArtistList.do";
	}
	
	public String updateArtist( ArtistVO vo) {
		artistService.updateArtist(vo);
		return "redirect:getArtistList.do";
	}
	
	public String deleteArtist(ArtistVO vo) {
		artistService.deleteArtist(vo);
		return "redirect:getArtistList.do";
	}
	

}
















