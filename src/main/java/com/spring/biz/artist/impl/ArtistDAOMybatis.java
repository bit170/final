package com.spring.biz.artist.impl;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.artist.ArtistVO;

@Repository
public class ArtistDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ArtistDAOMybatis() {
		System.out.println("~~~ ArtistDAOMybatis() 객체 생성 ~~~");
	}
	
	//작가등록
	public void insertArtist(ArtistVO vo) {
		mybatis.insert("artistDAO.insertArtist", vo);
	}
	
	//작가수정
	public void updateArtist(ArtistVO vo) {
		mybatis.update("artistDAO.updateArtist", vo);
	}
	
	//작가삭제
	public void deleteArtist(ArtistVO vo) {
		mybatis.delete("artistDAO.deleteArtist", vo);
	}
	
	//작가조회(하나)
	public ArtistVO getArtist(String id) {
		return mybatis.selectOne("artistDAO.getArtist", id);
	}
	
	//작가목록
	public List<ArtistVO> getArtistList(){
		return mybatis.selectList("artistDAO.getArtistList");
	}

	public List<ArtistVO> searchByName(String nickname) {
		return mybatis.selectList("artistDAO.searchByName", nickname);
	}

	public int searchable(String keyword) {
		return mybatis.selectOne("artistDAO.searchable", keyword);
	}

	
}





