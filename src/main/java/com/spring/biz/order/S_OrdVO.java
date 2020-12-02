package com.spring.biz.order;

public class S_OrdVO {
	private String o_code;
	private String p_code;
	private String a_id;
	
	public S_OrdVO() {
		System.out.println(">>> S_OrdVO() 객체 생성");
	}
	
	public S_OrdVO(String o_code, String p_code, String a_id) {
		this.o_code = o_code;
		this.p_code = p_code;
		this.a_id = a_id;
	}

	public String getO_code() {
		return o_code;
	}

	public void setO_code(String o_code) {
		this.o_code = o_code;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	
	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	@Override
	public String toString() {
		return "S_OrdVO [o_code=" + o_code + ", p_code=" + p_code + ", a_id=" + a_id + "]";
	}

}
