package com.spring.biz.address;

public interface AddressService {

	public void insertAddr(AddressVO vo);
	public void updateAddr(AddressVO vo);
	public void deleteAddr(AddressVO vo);
	public AddressVO getAddr(AddressVO vo);
}
