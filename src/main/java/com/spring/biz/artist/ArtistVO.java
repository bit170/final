package com.spring.biz.artist;

public class ArtistVO {
	private String a_id;
	private String nickname;
	private String a_detail;
	
	public ArtistVO() {
		System.out.println("~~~ArtistVO 객체생성~~~");
	}
	
	public ArtistVO(String a_id, String nickname, String a_detail) {
		this.a_id = a_id;
		this.nickname = nickname;
		this.a_detail = a_detail;
	}

	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getA_detail() {
		return a_detail;
	}
	public void setA_detail(String a_detail) {
		this.a_detail = a_detail;
	}
	
	@Override
	public String toString() {
		return "ArtistVO [a_id=" + a_id + ", nickname=" + nickname + ", a_detail=" + a_detail + "]";
	}
}
