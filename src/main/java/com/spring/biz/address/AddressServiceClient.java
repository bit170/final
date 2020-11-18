package com.spring.biz.address;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class AddressServiceClient {

	public static void main(String[] args) {

		System.out.println(" --- 스프링 컨테이너 구동 전 --- ");
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println(" --- 스프링 컨테이너 구동 후 --- ");
		AddressService addressService = (AddressService) container.getBean("addressService");
		
		
		
		System.out.println(" --- 스프링 컨테이너 종료 처리 --- ");
		container.close();
	}

}
