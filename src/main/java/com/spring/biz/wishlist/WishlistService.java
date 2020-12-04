package com.spring.biz.wishlist;

import java.util.List;

public interface WishlistService {
	public void insertWishlist(WishlistVO vo);
	public void deleteWishlist(String p_code);
	public void deleteAllWishlists(String id);
	public List<WishlistVO> getWishlists(String id);
	public int getWish(String id, String p_code);
	
}
