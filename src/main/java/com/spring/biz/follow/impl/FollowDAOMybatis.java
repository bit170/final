package com.spring.biz.follow.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.follow.FollowVO;

@Repository
public class FollowDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public FollowDAOMybatis() {
		System.out.println(">>> FollowDAOMybatis() 객체 생성");
	}
	
	public void insertFollow(FollowVO vo) {
		System.out.println(">>> insertFollow() 실행");
		mybatis.insert("followDAO.insertFollow", vo);
	}
	
	
}
