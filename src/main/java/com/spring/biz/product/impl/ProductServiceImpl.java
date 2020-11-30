package com.spring.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAOMybatis productDAO;

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
	}

	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		return productDAO.getProductList(vo);
	}

	@Override
	public List<ProductVO> getMainProduct() {
		return productDAO.getMainProduct();
	}
	
//	public ProductServiceImpl() {
//		System.out.println(">> ProductServiceImpl() 객체 생성");
//	}
	
	
}
