package com.spring.biz.wishlist.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.wishlist.WishlistVO;

@Repository
public class WishlistDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public WishlistDAOMybatis() {
		System.out.println(">>> WishlistDAOMybatis() 객체 생성 ");
	}
//	
//	public void insertWishlist(WishlistVO vo) {
//		System.out.println(">>> insertWishlist() 실행");
//		mybatis.insert("wishlistDAO.insertWishlist", vo);
//	}
//	
//	public void updateWishlist(WishlistVO vo) {
//		System.out.println(">>> updateWishlist() 실행");
//		mybatis.update("wishlistDAO.updateWishlist", vo);
//	}
//	
//	public void deleteWishlist(WishlistVO vo) {
//		System.out.println(">>> deleteWishlist() 실행");
//		mybatis.delete("wishlistDAO.deleteWishlist", vo);
//	}
//	
////	해당 아이디의 전체 
//	public void removeWishlist(WishlistVO vo) {
//		System.out.println(">>> removeWishlist() 실행");
//		mybatis.delete("wishlistDAO.removeWishlist", vo);
//	}
	
//	public WishlistVO getWishlist(WishlistVO vo) {
//		System.out.println(">>> getWishlist() 실행");
//		return mybatis.selectOne("wishlistDAO.getWishlist", vo);
//	}
	
//	public List<WishlistVO> getWishlists(WishlistVO vo){
//		System.out.println(">>> detWishlists() 실행");
//		return mybatis.selectList("wishlistDAO.getWishlists", vo);
//	}
	
	
}
