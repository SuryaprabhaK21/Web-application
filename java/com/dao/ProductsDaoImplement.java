package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.webapp.ProductDetails;

public class ProductsDaoImplement implements ProductsDao{
	
	private Connection connection;
	
	public ProductsDaoImplement(Connection connection) {
		super();
		this.connection = connection;
	}

	@Override
	public boolean addProducts(ProductDetails productDetails) {
		boolean check=false;
		try
		{
			String sqlQuery="INSERT INTO productdetails(Productid,Productname,Productcategory,Productprice,Active,Productimage,Emailid) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setInt(1, productDetails.getProductId());
			preparedStatement.setString(2, productDetails.getProductName());
			preparedStatement.setString(3, productDetails.getProductCategory());
			preparedStatement.setDouble(4, productDetails.getProductPrice());
			preparedStatement.setString(5, productDetails.getProductActive());
			preparedStatement.setString(6, productDetails.getProductImage());
			preparedStatement.setString(7, productDetails.getUserEmailID());
			int result=preparedStatement.executeUpdate();
			
			if(result==1) 
			{
				check=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return check;
	}

	@Override
	public List<ProductDetails> getAllProducts() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				productDetails.setUserEmailID(resultSet.getString(7));
				
				list.add(productDetails);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	

	@Override
	public ProductDetails getProductById(int productId) {
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productid=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setInt(1, productId);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return productDetails;
		
	}

	@Override
	public boolean updateProducts(ProductDetails productDetails) {
		boolean check=false;
		try
		{
			String sqlQuery="UPDATE productdetails SET Productname=?,Productcategory=?,Productprice=?,Active=? WHERE Productid=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			
			preparedStatement.setString(1, productDetails.getProductName());
			preparedStatement.setString(2, productDetails.getProductCategory());
			preparedStatement.setDouble(3, productDetails.getProductPrice());
			preparedStatement.setString(4, productDetails.getProductActive());
			preparedStatement.setInt(5, productDetails.getProductId());
			
			int result=preparedStatement.executeUpdate();
			if(result==1)
			{
				check=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return check;
	}

	@Override
	public boolean deleteProducts(int productId) {
		boolean check=false;
		try
		{
			String sqlQuery="DELETE FROM productdetails WHERE Productid=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setInt(1, productId);
			int result=preparedStatement.executeUpdate();
			if(result==1)
			{
				check=true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return check;
	}
	
	

	@Override
	public List<ProductDetails> getIndoorPlants() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Indoor Plants");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			int i=1;
			while(resultSet.next() && i<=3)
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
    
	
	@Override
	public List<ProductDetails> getFloweringPlants() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Flowering Plants");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			int i=1;
			while(resultSet.next() && i<=3)
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	

	@Override
	public List<ProductDetails> getSucculents() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Succulents");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			int i=1;
			while(resultSet.next() && i<=3)
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getPots() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Pots");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			int i=1;
			while(resultSet.next() && i<=3)
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<ProductDetails> getRecentLaunches() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			int i=1;
			while(resultSet.next() && i<=3)
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
				i++;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getAllRecentLaunches() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getAllIndoorPlants() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Indoor Plants");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getAllFloweringPlants() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Flowering Plants");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getAllSucculents() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Succulents");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDetails> getAllPots() {
		List<ProductDetails> list=new ArrayList<ProductDetails>();
		ProductDetails productDetails=null;
		try
		{
			String sqlQuery="SELECT * FROM productdetails WHERE Productcategory=? AND Active=? ORDER BY Productid DESC";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, "Pots");
			preparedStatement.setString(2, "Yes");
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				productDetails=new ProductDetails();
				productDetails.setProductId(resultSet.getInt(1));
				productDetails.setProductName(resultSet.getString(2));
				productDetails.setProductCategory(resultSet.getString(3));
				productDetails.setProductPrice(resultSet.getDouble(4));
				productDetails.setProductActive(resultSet.getString(5));
				productDetails.setProductImage(resultSet.getString(6));
				list.add(productDetails);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
}
