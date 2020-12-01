package com.spring.biz.product;

import java.sql.Date;

public class ProductVO {
	private String p_code;
	private String p_name;
	private int price;
	private String p_size;
	private Date p_date;
	private String p_category;
	private String p_detail;
	private String a_id;
	
	
	public ProductVO() {}

	
	
	public ProductVO(String p_code, String p_name, int price, String p_size, Date p_date, String p_category,
			String p_detail, String a_id) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.price = price;
		this.p_size = p_size;
		this.p_date = p_date;
		this.p_category = p_category;
		this.p_detail = p_detail;
		this.a_id = a_id;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	public Date getP_date() {
		return p_date;
	}

	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	@Override
	public String toString() {
		return "ProductVO [p_code=" + p_code + ", p_name=" + p_name + ", price=" + price + ", p_size=" + p_size
				+ ", p_date=" + p_date + ", p_category=" + p_category + ", p_detail=" + p_detail + ", a_id=" + a_id + "]";
	}

}