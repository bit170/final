package com.spring.biz.wishlist.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public void deleteWishlist(String p_code) {
		System.out.println("WishlistDAO.deleteWishlist()");
		mybatis.delete("wishlistDAO.deleteWishlist", p_code);
	}
	
	public void deleteAllWishlists(String id) {
		System.out.println("WishlistDAO.deleteAllWishlists()");
		mybatis.delete("wishlistDAO.deleteAllWishlists", id);
	}
	
	public List<WishlistVO> getWishlists(String id) {
		System.out.println("WishlistDAO.getWishlists()");
		return mybatis.selectList("wishlistDAO.getWishlists", id);
	}

	public int getWish(String id, String p_code) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("p_code", p_code);
		return mybatis.selectOne("wishlistDAO.getWish", map);
	}
	
	
}
