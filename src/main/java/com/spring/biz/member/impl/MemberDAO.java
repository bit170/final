package com.spring.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.spring.biz.member.MemberVO;
import com.spring.biz.member.S_MemberVO;

@Repository
public class MemberDAO {
	private SqlSessionTemplate mybatis;
	
	public S_MemberVO getMember(S_MemberVO svo) {
		return mybatis.selectOne("memberDAO.getMember", svo);
	}
	
	public int getId(String id) {
		return mybatis.selectOne("memberDAO.getId", id);
	}

	public MemberVO getMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}









