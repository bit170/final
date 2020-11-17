package com.spring.biz.admin;

public class AdminVO {
	private String AD_ID;
	private String AD_PWD;
	
	public AdminVO() {}

	public AdminVO(String aD_ID, String aD_PWD) {
		AD_ID = aD_ID;
		AD_PWD = aD_PWD;
	}

	public String getAD_ID() {
		return AD_ID;
	}

	public void setAD_ID(String aD_ID) {
		AD_ID = aD_ID;
	}

	public String getAD_PWD() {
		return AD_PWD;
	}

	public void setAD_PWD(String aD_PWD) {
		AD_PWD = aD_PWD;
	}

	@Override
	public String toString() {
		return "AdminVO [AD_ID=" + AD_ID + ", AD_PWD=" + AD_PWD + "]";
	}
	
}
