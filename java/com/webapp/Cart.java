package com.webapp;

public class Cart {
	private int cartId;
	private int productId;
	private int userId;
	private String productName;
	private String productImage;
	private Double productPrice;
	private Double totalPrice;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public Double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Double totalPrice) {
		this.productPrice = totalPrice;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", productId=" + productId + ", userId=" + userId + ", productName="
				+ productName + ", productImage=" + productImage + ", productPrice=" + productPrice + ", totalPrice="
				+ totalPrice + "]";
	}
	
	
	
	
	

}
