package com.spring.biz.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.biz.product.ProductVO;

public class ProductDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductDAOMybatis() {
		System.out.println(">>> ProductDAOMybatis() 객체 생성");
	}
	
	public void insertProduct(ProductVO vo) {
		System.out.println("> Mybatis로 insertProduct() 실행");
		mybatis.insert("productDAO.insertProduct", vo);
	}
	
	//글수정
	public void updateProduct(ProductVO vo) {
		System.out.println("===> MyBatis로 updateProduct() 실행");
		mybatis.update("productDAO.updateProduct", vo);
	}
		
	public void deleteProduct(ProductVO vo) {
		System.out.println("===> MyBatis로 deleteBoard() 실행");
		mybatis.delete("productDAO.deleteBoard", vo);
	}	
		
	//글 조회(하나만)
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("===> MyBatis로 getProduct() 실행");
			
		return mybatis.selectOne("productDAO.getProduct", vo);
	}
		
	//글 목록 조회
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> MyBatis로 getProductList() 실행");
			
		return mybatis.selectList("productDAO.getProductList", vo);
	}

}
