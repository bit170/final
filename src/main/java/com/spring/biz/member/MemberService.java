package com.spring.biz.member;


public interface MemberService {
	public MemberVO getMember(S_MemberVO svo);
	public MemberVO getMember(MemberVO vo);
	public void updateMember(MemberVO vo);
	public int insertMember(MemberVO vo);
	public MemberVO checkIdPwd(String id, String pwd);
	public int checkId(String id);
	public S_MemberVO getSMember(S_MemberVO svo);
}
