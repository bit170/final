package com.spring.biz.order;

public class OrdVO {
	private String o_code;
	private String id;
	private String a_id;
	private String o_date;
	private String total;
	
	public OrdVO() {
		System.out.println("OrdVO() 객체 생성");
	}
	
	public OrdVO(String o_code, String id, String a_id, String o_date, String total) {
		this.o_code = o_code;
		this.id = id;
		this.a_id = a_id;
		this.o_date = o_date;
		this.total = total;
	}

	public String getO_code() {
		return o_code;
	}

	public void setO_code(String o_code) {
		this.o_code = o_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	
	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "OrdVO [o_code=" + o_code + ", id=" + id + ", a_id=" + a_id + ", o_date=" + o_date + ", total=" + total
				+ "]";
	}

}
