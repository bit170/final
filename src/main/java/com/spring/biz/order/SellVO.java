package com.spring.biz.order;

public class SellVO {
	private String o_code;
	private String id;
	private String o_date;
	private String p_code;
	private String d_post;
	private String d_address;
	
	public SellVO() {
		System.out.println("SellVO() 객체 생성");
	}

	public SellVO(String o_code, String id, String o_date, String p_code, String d_post, String d_address) {
		super();
		this.o_code = o_code;
		this.id = id;
		this.o_date = o_date;
		this.p_code = p_code;
		this.d_post = d_post;
		this.d_address = d_address;
	}

	public String getO_code() {
		return o_code;
	}

	public void setO_code(String o_code) {
		this.o_code = o_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	
	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getD_post() {
		return d_post;
	}

	public void setD_post(String d_post) {
		this.d_post = d_post;
	}

	public String getD_address() {
		return d_address;
	}

	public void setD_address(String d_address) {
		this.d_address = d_address;
	}
	
}
