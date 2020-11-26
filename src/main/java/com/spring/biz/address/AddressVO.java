package com.spring.biz.address;

public class AddressVO {
	
	private String id;
	private String a_name;
	private String address;
	private String post;
	private String extra_address;
	
	public AddressVO() {}

	public AddressVO(String id, String a_name, String address, String post, String extra_address) {
		this.id = id;
		this.a_name = a_name;
		this.address = address;
		this.post = post;
		this.extra_address = extra_address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
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

	public String getExtra_address() {
		return extra_address;
	}

	public void setExtra_address(String extra_address) {
		this.extra_address = extra_address;
	}

	@Override
	public String toString() {
		return "AddressVO [id=" + id + ", a_name=" + a_name + ", address=" + address + ", post=" + post
				+ ", extra_address=" + extra_address + "]";
	}

}
