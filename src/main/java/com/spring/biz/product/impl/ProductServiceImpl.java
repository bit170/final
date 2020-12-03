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
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	public String addNewProduct(Map newProductMap) throws Exception {
		String p_code = productDAO.insertNewProduct(newProductMap);
		ArrayList<PImageFileVO> pimageFileList = (ArrayList) newProductMap.get("pimageFileList");
		for (PImageFileVO pimageFileVO : pimageFileList) {
			pimageFileVO.setP_code(p_code);
		}
		productDAO.insertPImageFile(pimageFileList);
		return p_code;
	}

	@Override
	public void addNewPImage(List pimageFileList) throws Exception {
		productDAO.insertPImageFile(pimageFileList);
	}

	@Override
	public void modifyProductInfo(Map productMap) throws Exception{
		productDAO.updateProductInfo(productMap);
	}
	
	@Override
	public void modifyPImage(List<PImageFileVO> pimageFileList) throws Exception{
		productDAO.updatePImage(pimageFileList);
	}
	 public List<PImageFileVO> productImageFile(String p_code) throws Exception{ 
		 return productDAO.selectProductImageFileList(p_code); 
	 }
	

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
		List<ProductVO> mList = productDAO.getMainProduct();
		System.out.println(mList.size());
		if(mList.size()==0) {
			mList = productDAO.getMain();
		}
		return mList; 
	}

	
	public ProductServiceImpl() {
		System.out.println(">> ProductServiceImpl() 객체 생성");
	}

	@Override
	public List<ProductVO> searchProduct(String keyword) {
		return productDAO.getSearchResult(keyword);
	}

	@Override
	public int searchable(String keyword) {
		return productDAO.searchable(keyword);

	}

	@Override
	public void addNewProductImage(List pimageFileList) throws Exception {
		
	}

	@Override
	public List<ProductVO> getCategory(String category) {
		return productDAO.getCategory(category);
	}

	@Override
	public List<Integer> categoryCnt() {
		return productDAO.categoryCnt();
	}

	@Override
	public List<PImageFileVO> getImages(String p_code) {
		return productDAO.getImages(p_code);
	}

	@Override
	public String getFileName(String p_code) {
		return productDAO.getFileName(p_code);
	}
	
}
	
