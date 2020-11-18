package com.spring.biz.member;


public interface MemberService {
	public MemberVO getMember(MemberVO vo);
	public int insertMember(MemberVO vo);
	public MemberVO checkIdPwd(String id, String pwd);
	public int checkId(String id);
}
