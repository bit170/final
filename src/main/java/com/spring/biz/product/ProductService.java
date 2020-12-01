package com.spring.biz.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	ProductVO getProduct(ProductVO vo);
	List<ProductVO> getProductList(ProductVO vo);

	List<ProductVO> getMainProduct();
	
	public String addNewProduct(Map newProductMap) throws Exception;

	public void addNewPImage(List pimageFileList) throws Exception;
	
	public void modifyProductInfo(Map productMap) throws Exception;
	
	public void modifyPImage(List<PImageFileVO> pimageFileList) throws Exception;

//	public List productImageFile(String p_code) throws Exception;
}
