package com.spring.biz.wishlist.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.wishlist.WishlistVO;

@Repository
public class WishlistDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public WishlistDAO() {
		System.out.println("WishlistDAO() 객체 생성");
	}
	
	public void insertWishlist(WishlistVO vo) {
		System.out.println("WishlistDAO.insertWishlist()");
		mybatis.insert("wishlistDAO.insertWishlist", vo);
	}
	
	public void deleteWishlist(WishlistVO vo) {
		System.out.println("WishlistDAO.deleteWishlist()");
		mybatis.delete("wishlistDAO.deleteWishlist", vo);
	}
	
	public void deleteAllWishlists(String id) {
		System.out.println("WishlistDAO.deleteAllWishlists()");
		mybatis.delete("wishlistDAO.deleteAllWishlists", id);
	}
}
