package com.spring.biz.artist;

public class AImageFileVO {
	private String a_id;
	private String ai_filename;
	private String ai_code;
	
	public AImageFileVO() {}

	public AImageFileVO(String a_id, String ai_filename, String ai_code) {
		super();
		this.a_id = a_id;
		this.ai_filename = ai_filename;
		this.ai_code = ai_code;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getAi_filename() {
		return ai_filename;
	}

	public void setAi_filename(String ai_filename) {
		this.ai_filename = ai_filename;
	}

	public String getAi_code() {
		return ai_code;
	}

	public void setAi_code(String ai_code) {
		this.ai_code = ai_code;
	}

}
