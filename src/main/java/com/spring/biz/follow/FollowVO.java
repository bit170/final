package com.spring.biz.follow;

public class FollowVO {
	private String ID;
	private String A_ID;
	
	public FollowVO() {}

	public FollowVO(String iD, String a_ID) {
		ID = iD;
		A_ID = a_ID;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getA_ID() {
		return A_ID;
	}

	public void setA_ID(String a_ID) {
		A_ID = a_ID;
	}

	@Override
	public String toString() {
		return "FollowVO [ID=" + ID + ", A_ID=" + A_ID + "]";
	}
	
}
