package com.spring.biz.product;

public class PImageFileVO {
	private String p_code;
	private String pi_filename;
	private String pi_code;
	private String pi_filetype;
	private String a_id;
	
	public PImageFileVO() {}
	
	public PImageFileVO(String p_code, String pi_filename, String pi_code, String pi_filetype, String a_id) {
		super();
		this.p_code = p_code;
		this.pi_filename = pi_filename;
		this.pi_code = pi_code;
		this.pi_filetype = pi_filetype;
		this.a_id = a_id;
		
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getPi_filename() {
		return pi_filename;
	}

	public void setPi_filename(String pi_filename) {
		this.pi_filename = pi_filename;
	}

	public String getPi_code() {
		return pi_code;
	}

	public void setPi_code(String pi_code) {
		this.pi_code = pi_code;
	}

	public String getPi_filetype() {
		return pi_filetype;
	}

	public void setPi_filetype(String pi_filetype) {
		this.pi_filetype = pi_filetype;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	
}