package com.spring.biz.member.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.member.S_MemberVO;

@Service("memberService") //이름 지정안하면 MemberServiceImpl
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
//	public MemberServiceImpl() {
//		System.out.println(">> MemberServiceImpl() 실행(객체생성)");
//	}
	
	/*
	 * @Override public MemberVO getMember(MemberVO vo) { return
	 * memberDAO.getMember(vo); }
	 */

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO checkIdPwd(String id, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkId(String id) {
//		memberDAO.getId(id)
		return 0;
	}

	@Override
	public S_MemberVO getSMember(S_MemberVO svo) {
		System.out.println("memberService.getSMember() 실행");
		return memberDAO.getSMember(svo);
	}

}
