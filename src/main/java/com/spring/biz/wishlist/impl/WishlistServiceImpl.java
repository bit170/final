package com.spring.biz.wishlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.wishlist.WishlistService;
import com.spring.biz.wishlist.WishlistVO;

@Service("wishlistService")
public class WishlistServiceImpl implements WishlistService{

	@Autowired
	private WishlistDAOMybatis wishlistDAO;
	
	public WishlistServiceImpl() {
		System.out.println(">> WishlistServiceImpl() 객체 생성");
	}
	
	@Override
	public void insertWishlist(WishlistVO vo) {
		wishlistDAO.insertWishlist(vo);
	}

	@Override
	public void updateWishlist(WishlistVO vo) {
		wishlistDAO.updateWishlist(vo);
		
	}

	@Override
	public void deleteWishlist(WishlistVO vo) {
		wishlistDAO.deleteWishlist(vo);
	}

	@Override
	public WishlistVO getWishlist(WishlistVO vo) {
		return wishlistDAO.getWishlist(vo);
	}

	@Override
	public List<WishlistVO> getWishlists(WishlistVO vo) {
		return wishlistDAO.getWishlists(vo);
	}

}
