package com.spring.biz.artist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;

//@Service("articeService")
public class ArtistServiceImpl implements ArtistService{

//	@Autowired
	private ArtistDAOMybatis artistDAO;
	
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
	public ArtistVO getArtist(ArtistVO vo) {
		return artistDAO.getArtist(vo);
	}

	@Override
	public List<ArtistVO> getArtistList(ArtistVO vo) {
		return artistDAO.getArtistList(vo);
	}

}