package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.webapp.Cart;
import com.webapp.ProductDetails;

public class CartDaoImplement implements CartDao{
	
	private Connection connection;

	public CartDaoImplement(Connection connection) {
		super();
		this.connection=connection;
	}
	@Override
	public boolean addToCart(Cart cart) {
		boolean check=false;
		try
		{
			String sqlQuery="INSERT INTO Cart(Productid,Userid,Productname,Productimage,Productprice,Totalprice) VALUES(?,?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setInt(1,cart.getProductId());
			preparedStatement.setInt(2,cart.getUserId() );
			preparedStatement.setString(3,cart.getProductName());
			preparedStatement.setString(4,cart.getProductImage());
			preparedStatement.setDouble(5,cart.getProductPrice());
			preparedStatement.setDouble(6,cart.getTotalPrice());
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
	public List<Cart> getProductsByUser(int userId) {
		List<Cart> list=new ArrayList<Cart>();
		Cart cart=null;
		Double totalPrice=0.00;
		try
		{
			String sqlQuery="SELECT * FROM cart WHERE Userid=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setInt(1, userId);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				cart=new Cart();
				cart.setCartId(resultSet.getInt(1));
				cart.setProductId(resultSet.getInt(2));
				cart.setUserId(resultSet.getInt(3));
				cart.setProductName(resultSet.getString(4));
				cart.setProductImage(resultSet.getString(5));
				cart.setProductPrice(resultSet.getDouble(6));
				totalPrice=totalPrice+resultSet.getDouble(7);
				cart.setTotalPrice(totalPrice);
				list.add(cart);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	
	

}
