package com.spring.biz.address.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.address.AddressVO;

@Repository
public class AddressDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public AddressDAO() {
		System.out.println("AddressDAO() 객체 생성");
	}
	
	public void insertAddr(AddressVO vo) {
		mybatis.insert("addressDAO.insertAddr", vo);
	}
	public void updateAddr(AddressVO vo) {
		mybatis.update("addressDAO.updateAddr", vo);
	}
	public void deleteAddr(AddressVO vo) {
		mybatis.delete("addressDAO.deleteAddr", vo);
	}
	public AddressVO getAddr(AddressVO vo) {
		return mybatis.selectOne("addressDAO.getAddr", vo);
	}
}
