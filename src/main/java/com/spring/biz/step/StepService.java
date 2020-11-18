package com.spring.biz.step;

import java.util.List;

public interface StepService {
	public void insertStep(StepVO vo);
	public void updateStep(StepVO vo);
	public void deleteStep(StepVO vo);
	public StepVO getWishlist(StepVO vo);
	public List<StepVO> getStepList(StepVO vo);
}
