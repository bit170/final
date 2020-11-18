package com.spring.biz.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

/*
	CREATE TABLE PRODUCT
	(
	    P_CODE    VARCHAR2(32)    NOT NULL, 
	    P_NAME    VARCHAR2(64)    NOT NULL, 
	    PRICE     NUMBER          NOT NULL, 
	    A_ID      VARCHAR2(20)    NOT NULL, 
	    P_SIZE    VARCHAR2(20)    NOT NULL, 
	    CONSTRAINT PRODUCT_PK PRIMARY KEY (P_CODE)
	);
	*/
public class ProductVO {
	private String p_code;
	private String p_name;
	private int price;
	private String a_id;
	private String p_size;
	private Date p_date;
	
	//검색조건용 필드 추가
	private String searchCondition;
	private String searchKeyword;
	
	public ProductVO() {
		System.out.println(">> ProductVO() 객체 생성");
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

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	@Override
	public String toString() {
		return "ProductVO [p_code=" + p_code + ", p_name=" + p_name + ", price=" + price + ", a_id=" + a_id
				+ ", p_size=" + p_size + ", p_date=" + p_date + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + "]";
	}
	
	
}
