package com.spring.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.user.MemberVO;

//@Repository
public class MemberDAOMybatis {
	
//	@Autowired
	private SqlSessionTemplate mybatis;
	
	public MemberDAOMybatis() {
		System.out.println(">>> MemberDAOMybatis() 객체 생성");
	}
	
	public MemberVO getMember(MemberVO vo) {
		System.out.println(">>> getMember() 실행");
		return mybatis.selectOne("memberDAO.getMember", vo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println(">>> updateMember() 실행");
		mybatis.update("memberDAO.updateMember", vo);
	}
}
