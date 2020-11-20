package com.spring.biz.wishlist.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Service("wishlistService")
public class WishlistServiceImpl implements WishlistService{
	
	@Autowired
	WishlistDAOMybatis wishlistDAO;
	
	@Override
	public WishlistVO getWishlist(WishlistVO vo) {
		return wishlistDAO.getWishlist(vo);
	}


}
