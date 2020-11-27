package com.spring.biz.product.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public ProductDAO() {
		System.out.println(">>> ProductDAOMybatis() 객체 생성");
	}	
		
	public String insertNewProduct(Map newProductMap) throws DataAccessException{
		sqlSession.insert("product", newProductMap);
		return (String) newProductMap.get("p_code");
	}
	
	public void insertProductImageFile(List pfileList) throws DataAccessException{
		for(int i=0; i<pfileList.size(); i++) {
			PImageFileVO pimageFileVO=(PImageFileVO)pfileList.get(i);
			sqlSession.insert("pimage", pimageFileVO);
		}
	}
	
	//글 조회(하나만)
//	public ProductVO getProduct(ProductVO vo) {
//		System.out.println("===> MyBatis로 getProduct() 실행");
//		return mybatis.selectOne("productDAO.getProduct", vo);
//	}
		
	//글 목록 조회
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> MyBatis로 getProductList() 실행");
		return sqlSession.selectList("productDAO.getProductList");
	}
//
//	public List<ProductVO> getMainProduct() {
//		System.out.println("productDAO.getMainProduct()");
//		return mybatis.selectList("productDAO.getMainProduct");
//	}

}
