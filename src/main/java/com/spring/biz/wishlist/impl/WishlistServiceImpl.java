package com.spring.biz.wishlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Service
public class WishlistServiceImpl implements WishlistService{
	@Autowired
	private WishlistDAO wishlistDAO;
	

	@Override
	public void deleteWishlist(String p_code) {
		wishlistDAO.deleteWishlist(p_code);
	}

	@Override
	public void insertWishlist(WishlistVO vo) {
		wishlistDAO.insertWishlist(vo);
		
	}

	@Override
	public void resetWishlists(String id) {
		wishlistDAO.resetWishlists(id);
	}

	@Override
	public List<WishlistVO> getWishlists(String id) {
		return wishlistDAO.getWishlists(id);
	}

	@Override
	public int getWish(String id, String p_code) {
		return wishlistDAO.getWish(id, p_code);
	}

}
