package com.spring.biz.product;

public class PImageFileVO {
	private String p_code;
	private String p_filename;
	
	public PImageFileVO() {}
	
	public PImageFileVO(String p_code, String p_filename) {
		super();
		this.p_code = p_code;
		this.p_filename = p_filename;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_filename() {
		return p_filename;
	}

	public void setP_filename(String p_filename) {
		this.p_filename = p_filename;
	}

	
}
