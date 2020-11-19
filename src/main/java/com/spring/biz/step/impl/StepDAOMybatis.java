package com.spring.biz.step.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.step.StepVO;

//@Repository
public class StepDAOMybatis {
	
//	@Autowired
	private SqlSessionTemplate mybatis;

	public StepDAOMybatis() {
		System.out.println(">>> StepDAOMybatis() 객체 생성");
	}

	public void insertStep(StepVO vo) {
		System.out.println(">>> insertStep() 실행");
		mybatis.insert("stepDAO.insertStep", vo);
	}
	
	public void updateStep(StepVO vo) {
		System.out.println(">>> updateStep() 실행");
		mybatis.update("stepDAO.updateStep", vo);
	}
	
	public void deleteStep(StepVO vo) {
		System.out.println(">>> deleteStep() 실행");
		mybatis.delete("stepDAO.deleteStep", vo);
	}
	
	public StepVO getStep(StepVO vo) {
		System.out.println(">>> getStep() 실행");
		return mybatis.selectOne("stepDAO.getStep", vo);
	}
	
	public List<StepVO> getStepList(StepVO vo){
		System.out.println(">>> getStepList 실행");
		return mybatis.selectList("stepDAO.getStepList", vo);
	}
	
}
