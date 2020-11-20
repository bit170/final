package com.spring.biz.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private String p_code;
	private String p_name;
	private int price;
	private String a_id;
	private String p_size;
	private Date p_date;
	private String p_img;
	private String p_category;
	
	
	public ProductVO() {}

	public ProductVO(String p_code, String p_name, int price, String a_id, String p_size, Date p_date, String p_img, String p_category) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.price = price;
		this.a_id = a_id;
		this.p_size = p_size;
		this.p_date = p_date;
		this.p_img = p_img;
		this.p_category = p_category;
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

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
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

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	@Override
	public String toString() {
		return "ProductVO [p_code=" + p_code + ", p_name=" + p_name + ", price=" + price + ", a_id=" + a_id
				+ ", p_size=" + p_size + ", p_date=" + p_date + ", p_img=" + p_img + ", p_category=" + p_category + "]";
	}

	

	
	
	
}
