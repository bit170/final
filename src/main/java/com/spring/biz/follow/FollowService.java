package com.spring.biz.follow;

import java.util.List;

import com.spring.biz.artist.ArtistVO;

public interface FollowService {
	String selectFollow(FollowVO vo);
	int insertFollow(FollowVO vo);
	void deleteFollow(FollowVO vo);
	void deleteAllFollow(String id);
	List<ArtistVO> getFollowList(String id);
}
