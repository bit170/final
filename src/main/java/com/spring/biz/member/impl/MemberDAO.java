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
	
	public MemberDAO() {
		System.out.println(">>> MemberDAO() 객체 생성");
	}
	
	public S_MemberVO getSMember(S_MemberVO svo) {
		System.out.println("memberDAO.getSMember()");
		return mybatis.selectOne("memberDAO.getSMember", svo);
	}
	
	public int getId(String id) {
		return mybatis.selectOne("memberDAO.getId", id); 
	}

	public MemberVO getMember(S_MemberVO svo) {
		System.out.println(">>> getMember() 실행");
		return mybatis.selectOne("memberDAO.getMember", svo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println(">>> updateMember() 실행");
		mybatis.update("memberDAO.updateMember", vo);
	}

	public int insertMember(MemberVO vo) {
		System.out.println(">>> insertMember() 실행");
		return mybatis.insert("memberDAO.insertMember", vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		System.out.println(">>> getMember(memberVO) 실행");
		return mybatis.selectOne("memberDAO.getMember", vo);
	}
	
}









