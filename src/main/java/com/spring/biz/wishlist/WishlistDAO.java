package com.spring.biz.wishlist;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WishlistDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public WishlistDAO() {
		System.out.println("WishlistDAO() 객체 생성");
	}
	
	public void deleteWishlist(WishlistVO vo) {
		System.out.println("WishlistDAO.deleteWishlist()");
		mybatis.delete("wishlistDAO.deleteWishlist", vo);
	}
}
