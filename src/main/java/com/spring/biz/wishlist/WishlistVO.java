package com.spring.biz.wishlist;

public class WishlistVO {
	private String p_code;
	private String id;
	
	public WishlistVO() {}
	public WishlistVO(String p_code, String id) {
		super();
		this.p_code = p_code;
		this.id = id;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "WishlistVO [p_code=" + p_code + ", id=" + id + "]";
	}
	
}
