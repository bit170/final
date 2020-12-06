package com.spring.biz.order.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.order.DeliveryVO;

@Repository
public class DeliveryDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public DeliveryDAO() {
		System.out.println(">>>>> DeliveryDAO() 객체 생성");
	}
	
	public void insertDelivery(DeliveryVO vo) {
		mybatis.insert("deliveryDAO.insertDelivery", vo);
	}
	
}
