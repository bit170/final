package com.spring.biz.address;

public class AddressVO {
	private String id;
	private String address;
	private String post;
	
	public AddressVO() {
		super();
	}
	public AddressVO(String id, String address, String post) {
		this.id = id;
		this.address = address;
		this.post = post;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	
	@Override
	public String toString() {
		return "AddressVO [id=" + id + ", address=" + address + ", post=" + post + "]";
	}
	
}
