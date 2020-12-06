package com.spring.biz.order;

public class DeliveryVO {
	private String p_code;
	private String d_address;
	private String d_post;
	private String id;
	private String o_code;
	
	public DeliveryVO() {
	}

	public DeliveryVO(String p_code, String d_address, String d_post, String id, String o_code) {
		this.p_code = p_code;
		this.d_address = d_address;
		this.d_post = d_post;
		this.id = id;
		this.o_code = o_code;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getD_address() {
		return d_address;
	}

	public void setD_address(String d_address) {
		this.d_address = d_address;
	}

	public String getD_post() {
		return d_post;
	}

	public void setD_post(String d_post) {
		this.d_post = d_post;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getO_code() {
		return o_code;
	}

	public void setO_code(String o_code) {
		this.o_code = o_code;
	}

	@Override
	public String toString() {
		return "DeliveryVO [p_code=" + p_code + ", d_address=" + d_address + ", d_post=" + d_post + ", id=" + id
				+ ", o_code=" + o_code + "]";
	}
	
}
