package com.spring.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.MemberService;
import com.spring.biz.user.MemberVO;

//@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
//	@Autowired
	private MemberDAOMybatis memberDAO;

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}
	

}
