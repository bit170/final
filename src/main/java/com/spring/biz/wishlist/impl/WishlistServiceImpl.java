package com.spring.biz.wishlist.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.wishlist.WishlistDAO;
import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Service
public class WishlistServiceImpl implements WishlistService{
	@Autowired
	private WishlistDAO wishlistDAO;
	

	@Override
	public void deleteWishlist(WishlistVO vo) {
		wishlistDAO.deleteWishlist(vo);
	}

	@Override
	public void insertWishlist(WishlistVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateWishlist(WishlistVO vo) {
		// TODO Auto-generated method stub
		
	}

}
