package com.spring.biz.product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface ProductService {

	ProductVO getProduct(ProductVO vo);
	List<ProductVO> getProductList(ProductVO vo);

	List<ProductVO> getMainProduct();

	
	public String addNewProduct(Map newProductMap) throws Exception;

	public void addNewProductImage(List pimageFileList) throws Exception;
	List<ProductVO> searchProduct(String keyword);
	int searchable(String keyword);

	public void addNewPImage(List pimageFileList) throws Exception;
	
	public void modifyProductInfo(Map productMap) throws Exception;
	
	public void modifyPImage(List<PImageFileVO> pimageFileList) throws Exception;
	List<ProductVO> getCategory(String category);
	List<Integer> categoryCnt();

//	public List productImageFile(String p_code) throws Exception;
}
