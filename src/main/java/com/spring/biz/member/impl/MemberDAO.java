package com.spring.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.member.MemberVO;
import com.spring.biz.member.S_MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public S_MemberVO getSMember(S_MemberVO svo) {
		System.out.println("memberDAO.getSMember()");
		return mybatis.selectOne("memberDAO.getSMember", svo);
	}
	
	public int getId(String id) {
		/* mybatis.selectOne("memberDAO.getId", id) */
		return 0;
	}

	public MemberVO getMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}









