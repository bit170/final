package com.spring.biz.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.order.OrdService;
import com.spring.biz.order.OrdVO;
import com.spring.biz.order.S_OrdVO;

@Service("ordService")
public class OrdServiceImpl implements OrdService{
	
	@Autowired
	private OrdDAO ordDAO;
	
	public OrdServiceImpl() {
		System.out.println(">>>>> OrdServiceImpl() 객체 생성");
	}
	
	@Override
	public void insertOrd(OrdVO vo) {
		ordDAO.insertOrd(vo);
	}

	@Override
	public void insertS_Ord(S_OrdVO svo) {
		ordDAO.insertS_Ord(svo);
	}

	@Override
	public List<S_OrdVO> getS_OrdList(String o_code) {
		return ordDAO.getS_OrdList(o_code);
	}
	
}
