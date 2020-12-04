package com.spring.biz.product.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductDAO() {
		System.out.println(">>> ProductDAOMybatis() 객체 생성");
	}	
		
	public String insertNewProduct(Map newProductMap) throws DataAccessException{
		mybatis.insert("productDAO.insertNewProduct", newProductMap);
		return (String) newProductMap.get("p_code");
	}
	
	public void insertPImageFile(List pfileList) throws DataAccessException{
		for(int i=0; i<pfileList.size(); i++) {
			PImageFileVO pimageFileVO=(PImageFileVO)pfileList.get(i);
			System.out.println(pimageFileVO);
			mybatis.insert("productDAO.insertPImageFile", pimageFileVO);
		}
	}
	
	public void updateProductInfo(Map productMap) throws DataAccessException{
		mybatis.update("productDAO.updateProductInfo", productMap);
	}
	
	public void updatePImage(List<PImageFileVO> pimageFileList) throws DataAccessException{
		for(int i=0; i<pimageFileList.size();i++){
			PImageFileVO pimageFileVO = pimageFileList.get(i);
			mybatis.update("productDAO.updatePImage",pimageFileVO);
		}
	}
		

//	글 조회(하나만)

	public ProductVO getProduct(String p_code) {
		System.out.println("===> MyBatis로 getProduct() 실행");
		return mybatis.selectOne("productDAO.getProduct", p_code);
	}
		
	//글 목록 조회
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> MyBatis로 getProductList() 실행");
		return mybatis.selectList("productDAO.getProductList");
	}


	public List<ProductVO> getMainProduct() {
		System.out.println("productDAO.getMainProduct()");
		return mybatis.selectList("productDAO.getMainProduct");
	}


	public List<ProductVO> getSearchResult(String keyword) {
		System.out.println("productDAO.getSearchResult()");
				//작품 이름에 keyword가 포함된 작품객체 리스트로 받아오기
		return mybatis.selectList("productDAO.getSearchResult", keyword);
	}

	public int searchable(String keyword) {
		System.out.println("productDAO.searchable() 실행");
		return mybatis.selectOne("productDAO.searchable", keyword);
	}

	public List<PImageFileVO> selectProductImageFileList(String p_code) throws DataAccessException{
		return mybatis.selectList("productDAO.selectProductImageFileList", p_code);
	}

	// 판매완료 제품 가격 변경 메서드 (연희)
	public void updatePrice(String p_code) {
		mybatis.update("productDAO.updatePrice", p_code);
	}
	
	public String getA_Id(String p_code) {
		return mybatis.selectOne("productDAO.getA_Id", p_code);
	}
	
	public String getPrice(String p_code) {
		return mybatis.selectOne("productDAO.getPrice", p_code);
	}

  public List<ProductVO> getCategory(String category) {
		return mybatis.selectList("productDAO.getCategoryList", category);
	}

	public List<Integer> categoryCnt() {
		return mybatis.selectList("productDAO.categoryCnt");
	}

	public List<PImageFileVO> getImages(String p_code) {
		return mybatis.selectList("productDAO.getImages", p_code);
	}

	public String getFileName(String p_code) {
		return mybatis.selectOne("productDAO.getFileName", p_code);
	}

	public List<ProductVO> getMain() {
		return mybatis.selectList("productDAO.getMain");
	}

	public String getFileName(String p_code, String pi_filetype) {
		Map<String, String> pi_info = new HashMap<String, String>();
		pi_info.put("p_code", p_code);
		pi_info.put("pi_filetype", pi_filetype);
		return mybatis.selectOne("productDAO.imgFileName", pi_info);
	}
	
	public List<ProductVO> searchByPname(String p_name){
		return mybatis.selectList("productDAO.searchByPname", p_name);
	}

}
