package com.spring.biz.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.ProductVO;

@Repository
public class ProductDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductDAOMybatis() {
		System.out.println(">>> ProductDAOMybatis() 객체 생성");

	}	
		
	//글 조회(하나만)
//	public ProductVO getProduct(ProductVO vo) {
//		System.out.println("===> MyBatis로 getProduct() 실행");
//		return mybatis.selectOne("productDAO.getProduct", vo);
//	}
		
	//글 목록 조회
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> MyBatis로 getProductList() 실행");
		return mybatis.selectList("productDAO.getProductList");
	}

}
