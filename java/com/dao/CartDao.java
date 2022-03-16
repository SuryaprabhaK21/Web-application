package com.dao;

import java.util.List;

import com.webapp.Cart;

public interface CartDao {
	public boolean addToCart(Cart c);
	public List<Cart> getProductsByUser(int userId);
}
