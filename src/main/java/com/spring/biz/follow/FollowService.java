package com.spring.biz.follow;

import java.util.List;

public interface FollowService {
	public void insertFollow(FollowVO vo);
	public void updateFollow(FollowVO vo);
	public void deleteFollow(FollowVO vo);
	public List<FollowVO> FollowList(FollowVO vo);
}
