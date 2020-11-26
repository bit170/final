package com.spring.biz.product;

import java.util.List;

public interface ProductService {
	//ProductVO getProduct(ProductVO vo);
	List<ProductVO> getProductList(ProductVO vo);

	List<ProductVO> getMainProduct();
}
