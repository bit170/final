package com.spring.biz.follow;

public class FollowVO {
	private String id;
	private String a_id;
	
	public FollowVO() {
		System.out.println("~~~FollowVO 객체 생성~~~");
	}

	public FollowVO(String id, String a_id) {
		this.id = id;
		this.a_id = a_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	@Override
	public String toString() {
		return "FollowVO [id=" + id + ", a_id=" + a_id + "]";
	}
	
}
