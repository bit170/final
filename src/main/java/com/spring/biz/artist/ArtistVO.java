package com.spring.biz.artist;

public class ArtistVO {
	private String id;
	private String nickname;
	private String a_detail;
	
	public ArtistVO() {
		System.out.println("~~~ArtistVO 객체생성~~~");
	}
	
	public ArtistVO(String id, String nickname, String a_detail) {
		this.id = id;
		this.nickname = nickname;
		this.a_detail = a_detail;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "ArtistVO [id=" + id + ", nickname=" + nickname + ", a_detail=" + a_detail + "]";
	}
}
