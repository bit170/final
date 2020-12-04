package com.spring.biz.artist.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.biz.artist.AImageFileVO;
import com.spring.biz.artist.ArtistVO;

@Repository
public class ArtistDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ArtistDAOMybatis() {
		System.out.println("~~~ ArtistDAOMybatis() 객체 생성 ~~~");
	}
	
	//작가 테이블에 존재여부 확인
	public int alreadyArtist(String a_id) {
		return mybatis.selectOne("artistDAO.alreadyArtist", a_id);
	}

	//작가등록(작품게시 시,아이디&닉네임)
	public void insertArtist(HashMap idNickname) {
		mybatis.insert("artistDAO.insertArtist", idNickname);
	}
	
	//작가소개 수정
	public void addArtistInfo(Map newArtistMap) throws DataAccessException{
		mybatis.update("artistDAO.addArtistInfo", newArtistMap);
	}
	
	//작가프사 수정
	public void insertAImageFile(List afileList) throws DataAccessException{
		for(int i=0; i<afileList.size(); i++) {
			AImageFileVO aimageFileVO = (AImageFileVO)afileList.get(i);
			System.out.println(aimageFileVO);
			mybatis.insert("artistDAO.insertAImageFile", aimageFileVO);
		}
	}

	//작가프사 파일명 받아오기
	public String searchFilename(String a_id) {
		String aiCode = mybatis.selectOne("artistDAO.searchAiCode", a_id);
		return mybatis.selectOne("artistDAO.getFilename", aiCode);
	}

	//작가삭제
//	public void deleteArtist(ArtistVO vo) {
//		mybatis.delete("artistDAO.deleteArtist", vo);
//	}
		
	//작가조회(한 명)
	public ArtistVO getArtist(String a_id) {
		return mybatis.selectOne("artistDAO.getArtist", a_id);
	}
	
	//작가목록
	public List<ArtistVO> getArtistList(){
		return mybatis.selectList("artistDAO.getArtistList");
	}

	//작가검색(닉네임)
	public List<ArtistVO> searchByName(String nickname) {
		return mybatis.selectList("artistDAO.searchByName", nickname);
	}
	
	//해당작가의 모든 작품 검색
	public List<Map<String, String>> getAllPrinting(String a_id) {
		return mybatis.selectList("artistDAO.getAllPrinting", a_id);
	}

	

	public int searchable(String keyword) {
		return mybatis.selectOne("artistDAO.searchable", keyword);
	}

	public List<ArtistVO> getMainArtist() {
		return mybatis.selectList("artistDAO.getMainArtist");
	}

}
