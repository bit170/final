package com.spring.biz.step;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class StepServiceClient {
	public static void main(String[] args) {
		
		System.out.println(" --- 스프링 컨테이너 구동 전 --- ");
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println(" --- 스프링 컨테이너 구동 후 --- ");
		StepService stepService = (StepService) container.getBean("stepService");
		
		
		
		System.out.println(" --- 스프링 컨테이너 종료처리 --- ");
		container.close();
	}
}
