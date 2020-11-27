package com.spring.biz.product.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public String addNewProduct(Map newProductMap) throws Exception {
		String p_code = productDAO.insertNewProduct(newProductMap);
		ArrayList<PImageFileVO> pimageFileList = (ArrayList)newProductMap.get("pimageFileList");
		for(PImageFileVO pimageFileVO : pimageFileList) {
			pimageFileVO.setP_code(p_code);
		}
		productDAO.insertProductImageFile(pimageFileList);
		return p_code;
	}


	//@Override
//	public ProductVO getProduct(ProductVO vo) {
//		return productDAO.getProduct(vo);
//	}

	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		return productDAO.getProductList(vo);
	}
//
//	@Override
//	public List<ProductVO> getMainProduct() {
//		return productDAO.getMainProduct();
//	}
	
//	public ProductServiceImpl() {
//		System.out.println(">> ProductServiceImpl() 객체 생성");
//	}
	
	
}
