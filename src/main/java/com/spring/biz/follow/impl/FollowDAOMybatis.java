package com.spring.biz.follow.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.artist.ArtistVO;
import com.spring.biz.follow.FollowVO;

@Repository
public class FollowDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public FollowDAOMybatis() {
		System.out.println("~~~ FollowDAOMybatis() 객체 생성~~~");
	}
	
	//해당 팔로우 정보 확인하기
	public String selectFollow(FollowVO vo) {
		return mybatis.selectOne("followDAO.selectFollow", vo);
	}
	
	//팔로우하기
	public int insertFollow(FollowVO vo) {
		return mybatis.insert("followDAO.insertFollow", vo);
	}
	
	//팔로우취소(하나)
	public void deleteFollow(FollowVO vo) {
		mybatis.delete("followDAO.deleteFollow", vo);
	}
	
	//팔로우전체취소
	public void deleteAllFollow(String id) {
		mybatis.delete("followDAO.deleteAllFollow", id);
	}

	//팔로우목록
	public List<ArtistVO> getFollowList(String id) {
		return mybatis.selectList("followDAO.getFollowList", id);
	}
}
