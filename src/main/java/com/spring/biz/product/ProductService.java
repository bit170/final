package com.spring.biz.product;

import java.util.List;

public interface ProductService {
	//CRUD 기능 구현 메소드 
	void insertProduct(ProductVO vo);
	void updateProduct(ProductVO vo);
	void deleteProduct(ProductVO vo);
	ProductVO getProduct(ProductVO vo);
	List<ProductVO> getProductList(ProductVO vo);
}
