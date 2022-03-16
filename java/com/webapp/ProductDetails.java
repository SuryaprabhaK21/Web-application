package com.webapp;

public class ProductDetails {
	private int productId;
	private String productName;
	private String productCategory;
	private Double productPrice;
	private String productActive;
	private String productImage;
	private String userEmailID;
	public ProductDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDetails(int productId,String productName, String productCategory, Double productPrice, String productActive,
			String productImage, String userEmailID) {
		super();
		this.productId=productId;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productPrice = productPrice;
		this.productActive = productActive;
		this.productImage = productImage;
		this.userEmailID = userEmailID;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductActive() {
		return productActive;
	}
	public void setProductActive(String productActive) {
		this.productActive = productActive;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getUserEmailID() {
		return userEmailID;
	}
	public void setUserEmailID(String userEmailID) {
		this.userEmailID = userEmailID;
	}
	@Override
	public String toString() {
		return "ProductDetails [productId=" + productId + ", productName=" + productName + ", productCategory="
				+ productCategory + ", productPrice=" + productPrice + ", productActive=" + productActive
				+ ", productImage=" + productImage + ", userEmailID=" + userEmailID + "]";
	}
	

}
