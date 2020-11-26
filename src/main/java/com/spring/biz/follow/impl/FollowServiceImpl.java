package com.spring.biz.follow.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.artist.ArtistVO;
import com.spring.biz.follow.FollowService;
import com.spring.biz.follow.FollowVO;

@Service("followService")
public class FollowServiceImpl implements FollowService {

	@Autowired
	private FollowDAOMybatis followDAO;
	
	public FollowServiceImpl() {
		System.out.println("~~~~~FollowServiceImpl() 생성~~~~~");
	}
	
	@Override
	public String selectFollow(FollowVO vo) {
		return followDAO.selectFollow(vo);
	}
	
	@Override
	public int insertFollow(FollowVO vo) {
		return followDAO.insertFollow(vo);
	}

	@Override
	public void deleteFollow(FollowVO vo) {
		followDAO.deleteFollow(vo);
	}

	@Override
	public void deleteAllFollow(String id) {
		followDAO.deleteAllFollow(id);
	}

	@Override
	public List<ArtistVO> getFollowList(String id) {
		return followDAO.getFollowList(id);
	}

}
