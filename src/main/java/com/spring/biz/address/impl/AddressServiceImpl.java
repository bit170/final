package com.spring.biz.address.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.address.AddressService;
import com.spring.biz.address.AddressVO;

@Service("addressService")
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	private AddressDAO addressDAO;
	
	@Override
	public void insertAddr(AddressVO vo) {
		addressDAO.insertAddr(vo);
	}

	@Override
	public void updateAddr(AddressVO vo) {
		addressDAO.updateAddr(vo);
	}

	@Override
	public void deleteAddr(AddressVO vo) {
		addressDAO.deleteAddr(vo);
	}

	@Override
	public AddressVO getAddr(AddressVO vo) {
		return addressDAO.getAddr(vo);
	}

}
