package com.spring.biz.order.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.order.DeliveryService;
import com.spring.biz.order.DeliveryVO;

@Service("deliveryService")
public class DeliveryServiceImpl implements DeliveryService{

	@Autowired
	private DeliveryDAO deliveryDAO;
	
	@Override
	public void insertDelivery(DeliveryVO vo) {
		deliveryDAO.insertDelivery(vo);
	}

}
