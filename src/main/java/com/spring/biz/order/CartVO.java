package com.spring.biz.order;

public class CartVO {
	private String p_code;
	private String p_name;
	private String a_id;
	private String c_price;
	
	public CartVO() {
		System.out.println("CartVO() 객체 생성");
	}

	public CartVO(String p_code, String p_name, String a_id, String c_price) {
		this.p_code = p_code;
		this.p_name = p_name;
		this.a_id = a_id;
		this.c_price = c_price;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getC_price() {
		return c_price;
	}

	public void setC_price(String c_price) {
		this.c_price = c_price;
	}


	@Override
	public String toString() {
		return "CartVO [p_code=" + p_code + ", p_name=" + p_name + ", a_id=" + a_id +
				", c_price=" + c_price + "]";
	}

}
