package com.dao;

import java.util.List;

import com.webapp.ProductDetails;

public interface ProductsDao {
	
	public boolean addProducts(ProductDetails productDetails);
	public  List<ProductDetails> getAllProducts();
	public ProductDetails getProductById(int productId);
	public boolean updateProducts(ProductDetails productDetails);
	public boolean deleteProducts(int productId);
	
	public List<ProductDetails> getIndoorPlants();
	public List<ProductDetails> getFloweringPlants();
	public List<ProductDetails> getSucculents();
	public List<ProductDetails> getPots();
	public List<ProductDetails> getRecentLaunches();
	
	//To display all products
	public List<ProductDetails> getAllRecentLaunches();
	public List<ProductDetails> getAllIndoorPlants();
	public List<ProductDetails> getAllFloweringPlants();
	public List<ProductDetails> getAllSucculents();
	public List<ProductDetails> getAllPots();
	
	
}
