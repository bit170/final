package com.spring.biz.artist;

public class AImageFileVO {
	private String id;
	private String ai_filename;
	private String ai_code;
	
	public AImageFileVO() {}

	public AImageFileVO(String id, String ai_filename, String ai_code) {
		super();
		this.id = id;
		this.ai_filename = ai_filename;
		this.ai_code = ai_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
