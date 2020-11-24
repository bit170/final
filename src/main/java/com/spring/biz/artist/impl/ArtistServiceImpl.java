package com.spring.biz.artist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;

@Service("artistService")
public class ArtistServiceImpl implements ArtistService{

	@Autowired
	private ArtistDAOMybatis artistDAO;
	
	
	public ArtistServiceImpl() {
		System.out.println("~~~~~ArtistServiceImpl() 생성~~~~~");
	}

	@Override
	public void insertArtist(ArtistVO vo) {
		artistDAO.insertArtist(vo);
	}

	@Override
	public void updateArtist(ArtistVO vo) {
		artistDAO.updateArtist(vo);
	}

	@Override
	public void deleteArtist(ArtistVO vo) {
		artistDAO.deleteArtist(vo);
	}

	@Override
	public ArtistVO getArtist(String id) {
		return artistDAO.getArtist(id);
	}

	@Override
	public List<ArtistVO> getArtistList() {
		return artistDAO.getArtistList();
	}
	
	@Override
	public List<ArtistVO> searchByName(String nickname){
		return artistDAO.searchByName(nickname);
	}

}
