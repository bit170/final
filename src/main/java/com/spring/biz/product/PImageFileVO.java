package com.spring.biz.product;

public class PImageFileVO {
	private String p_code;
	private String p_filename;
	private String pi_code;
	private String pi_filetype;
	private String reg_id;
	
	public PImageFileVO() {}
	
	public PImageFileVO(String p_code, String p_filename, String pi_code, String pi_filetype, String reg_id) {
		super();
		this.p_code = p_code;
		this.p_filename = p_filename;
		this.pi_code = pi_code;
		this.pi_filetype = pi_filetype;
		this.reg_id = reg_id;
		
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

	public String getReg_id() {
		return reg_id;
	}

	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}

	
}
