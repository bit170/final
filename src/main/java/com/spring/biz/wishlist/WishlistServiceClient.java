package com.spring.biz.wishlist;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class WishlistServiceClient {

	public static void main(String[] args) {
		
		System.out.println(" --- 스프링 컨테이너 구동 전 --- ");
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println(" --- 스프링 컨테이너 구동 후 --- ");
		WishlistService wishlistService = (WishlistService) container.getBean("wishlistService");
		
		
		
		System.out.println(" --- 스프링 컨테이너 종료처리 --- ");
		container.close();
		
	}

}
