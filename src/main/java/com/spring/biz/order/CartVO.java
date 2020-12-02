package com.spring.biz.order;

public class CartVO {
	private String p_code;
	private String p_name;
	private String p_img;
	private int c_price;
	
	public CartVO() {
		System.out.println("CartVO() 객체 생성");
	}

	public CartVO(String p_code, String p_name, String p_img, int c_price) {
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_img = p_img;
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

	public String getp_img() {
		return p_img;
	}

	public void setp_img(String p_img) {
		this.p_img = p_img;
	}

	public int getc_price() {
		return c_price;
	}

	public void setc_price(int c_price) {
		this.c_price = c_price;
	}

	@Override
	public String toString() {
		return "CartVO [p_code=" + p_code + ", p_name=" + p_name + ", p_img=" + p_img +
				", c_price=" + c_price + "]";
	}

}
