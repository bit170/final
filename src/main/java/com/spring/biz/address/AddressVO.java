package com.spring.biz.address;

public class AddressVO {
	
	private String id;
	private String a_name;
	private String city;
	private String post;
	private String street;
	private String cnt;
	
	public AddressVO() {}

	public AddressVO(String id, String a_name, String city, String post, String street, String cnt) {
		super();
		this.id = id;
		this.a_name = a_name;
		this.city = city;
		this.post = post;
		this.street = street;
		this.cnt = cnt;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getCnt() {
		return cnt;
	}

	public void setCnt(String cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "AddressVO [id=" + id + ", a_name=" + a_name + ", city=" + city + ", post=" + post + ", street=" + street
				+ ", cnt=" + cnt + "]";
	}
	
}
