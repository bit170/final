package com.spring.biz.artist.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.artist.AImageFileVO;
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
	public void insertArtist(HashMap idNickname) {
		artistDAO.insertArtist(idNickname);
	}

	@Override
	public void addArtistInfo(Map newArtistMap) throws Exception {
		artistDAO.addArtistInfo(newArtistMap);
		ArrayList<AImageFileVO> aimageFileList = (ArrayList)newArtistMap.get("aimageFileList");
		artistDAO.insertAImageFile(aimageFileList);
	}
	
	@Override
	public void addNewAImage(List aimageFileList) throws Exception {
		artistDAO.insertAImageFile(aimageFileList);
	}
	
//	@Override
//	public void deleteArtist(ArtistVO vo) {
//		artistDAO.deleteArtist(vo);
//	}

	@Override
	public int alreadyArtist(String a_id) {
		return artistDAO.alreadyArtist(a_id);
	}
	
	@Override
	public ArtistVO getArtist(String a_id) {
		return artistDAO.getArtist(a_id);
	}

	@Override
	public List<ArtistVO> getArtistList() {
		return artistDAO.getArtistList();
	}
	
	@Override
	public List<ArtistVO> searchByName(String nickname){
		return artistDAO.searchByName(nickname);
	}

	@Override
	public String searchFilename(String a_id) {
		return artistDAO.searchFilename(a_id);
	}

	@Override
	public List<ArtistVO> getMainArtist() {
		return artistDAO.getMainArtist();
	}

	@Override
	public int searchable(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

}
