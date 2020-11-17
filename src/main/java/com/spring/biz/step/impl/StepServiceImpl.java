package com.spring.biz.step.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.biz.step.StepService;
import com.spring.biz.step.StepVO;

@Service("stepService")
public class StepServiceImpl implements StepService{
	
	private StepDAOMybatis stepDAO;
	
	public StepServiceImpl() {
		System.out.println(">> StepServiceImpl() 객체 생성");
	}
	
	@Override
	public void insertStep(StepVO vo) {
		stepDAO.insertStep(vo);
	}

	@Override
	public void updateStep(StepVO vo) {
		stepDAO.updateStep(vo);
	}

	@Override
	public void deleteStep(StepVO vo) {
		stepDAO.deleteStep(vo);
	}

	@Override
	public StepVO getWishlist(StepVO vo) {
		return stepDAO.getStep(vo);
	}

	@Override
	public List<StepVO> getStepList(StepVO vo) {
		return stepDAO.getStepList(vo);
	}

}
