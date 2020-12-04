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
  	
	public ProductServiceImpl() {
		System.out.println(">> ProductServiceImpl() 객체 생성");
	}
  
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
	public ProductVO getProduct(String p_code) {
		 System.out.println("ProductServiceImpl getProduct() 실행");
		return productDAO.getProduct(p_code);
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
	public void updatePrice(String p_code) {
		productDAO.updatePrice(p_code);
	}

	@Override
	public String getA_Id(String p_code) {
		return productDAO.getA_Id(p_code);
	}

	@Override
	public String getPrice(String p_code) {
		return productDAO.getPrice(p_code);
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

	@Override
	public String getFileName(String p_code, String pi_filetype) {
		return productDAO.getFileName(p_code,pi_filetype);
	}

	@Override
	public List<ProductVO> getMyProduct(String id) {
		return productDAO.getMyProduct(id);
	}

	
	@Override
	public List<ProductVO> searchByPname(String p_name){
		return productDAO.searchByPname(p_name);
	}
	
}
	
