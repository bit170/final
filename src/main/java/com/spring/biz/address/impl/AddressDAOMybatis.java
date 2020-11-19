package com.spring.biz.address.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.address.AddressVO;

//@Repository
public class AddressDAOMybatis {
//	@Autowired
	private SqlSessionTemplate mybatis;
	
	public AddressDAOMybatis() {
		System.out.println(">>> AddressDAOMybatis() 객체 생성");
	}
	
	public void insertAddress(AddressVO vo) {
		System.out.println(">>> insertAddress() 실행");
		mybatis.insert("addressDAO.insertAddress", vo);
	}
	
	public void updateAddress(AddressVO vo) {
		System.out.println(">>> insertAddress() 실행");
		mybatis.update("addressDAO.updateAddress", vo);
	}
	
	public void deleteAddress(AddressVO vo) {
		System.out.println(">>> deleteAddress() 실행");
		mybatis.delete("addressDAO.deleteAddress", vo);
	}
	
	public AddressVO getAddress(AddressVO vo) {
		System.out.println(">>> getAddress() 실행");
		return mybatis.selectOne("addressDAO.getAddress", vo);
	}
	
	public List<AddressVO> getAddressList(AddressVO vo){
		System.out.println(">>> getAddressList() 실행");
		return mybatis.selectList("addressDAO.getAddressList", vo);
		
	}
}
