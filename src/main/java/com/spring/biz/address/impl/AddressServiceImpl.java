package com.spring.biz.address.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;

//@Service("addressService")
public class AddressServiceImpl implements AddressService{
//	@Autowired
	private AddressDAOMybatis addressDAO;

	public AddressServiceImpl() {
		System.out.println(">> AddressServiceImpl() 객체 생성");		
	}

	@Override
	public void insertAddress(AddressVO vo) {
		addressDAO.insertAddress(vo);
	}

	@Override
	public void updateAddress(AddressVO vo) {
		addressDAO.updateAddress(vo);
	}

	@Override
	public void deleteAddress(AddressVO vo) {
		addressDAO.deleteAddress(vo);
	}

	@Override
	public AddressVO getAddress(AddressVO vo) {
		return addressDAO.getAddress(vo);
	}
		
	@Override
	public List<AddressVO> AddressList(AddressVO vo) {
		return addressDAO.getAddressList(vo);

	}
	
	
}
