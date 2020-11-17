package com.spring.biz.step;

public class StepVO {
private String o_code;
private String step;

public StepVO() {}

public StepVO(String o_code, String step) {
	this.o_code = o_code;
	this.step = step;
}

public String getO_code() {
	return o_code;
}

public void setO_code(String o_code) {
	this.o_code = o_code;
}

public String getStep() {
	return step;
}

public void setStep(String step) {
	this.step = step;
}

@Override
public String toString() {
	return "StepVO [o_code=" + o_code + ", step=" + step + "]";
}

}
