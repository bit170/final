package com.spring.biz.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	//ProductVO getProduct(ProductVO vo);
	List<ProductVO> getProductList(ProductVO vo);
//
//	List<ProductVO> getMainProduct();
	
	public String addNewProduct(Map newProductMap) throws Exception;
}
