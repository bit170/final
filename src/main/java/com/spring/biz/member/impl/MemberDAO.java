package com.spring.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.spring.biz.member.MemberVO;

@Repository
public class MemberDAO {
	private SqlSessionTemplate mybatis;
	
	public int getId(String id) {
		return mybatis.selectOne("memberDAO.getId", id);
	}

	public MemberVO getMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}









