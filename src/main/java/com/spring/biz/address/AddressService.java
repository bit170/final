package com.spring.biz.address;

import java.util.List;

public interface AddressService {
	public void insertAddress(AddressVO vo);
	public void updateAddress(AddressVO vo);
	public void deleteAddress(AddressVO vo);
	public List<AddressVO> AddressList(AddressVO vo);
}
