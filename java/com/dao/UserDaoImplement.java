package com.dao;

import java.sql.*;

import com.webapp.User;

public class UserDaoImplement implements UserDao{
	private Connection connection;

	public UserDaoImplement(Connection connection) {
		super();
		this.connection = connection;
	}

	@Override
	public boolean userRegister(User user) {
		boolean check=false;
		try
		{
			String sqlQuery="INSERT INTO users(Username,Email,Mobilenumber,Password,Confirmpassword) VALUES(?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getUserEmailID());
			preparedStatement.setString(3, user.getUserMobileNumber());
			preparedStatement.setString(4, user.getUserPassword());
			preparedStatement.setString(5, user.getUserConfirmPassword());
			
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
	public User userLogin(String userEmailID, String userPassword) {
		User user=null;
		
		try
		{
			String sqlQuery="SELECT * FROM users WHERE Email=? AND Password=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, userEmailID);
			preparedStatement.setString(2, userPassword);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				user=new User();
				user.setId(resultSet.getInt(1));
				user.setUsername(resultSet.getString(2));
				user.setUserEmailID(resultSet.getString(3));
				user.setUserMobileNumber(resultSet.getString(4));
				user.setUserPassword(resultSet.getString(5));
				user.setUserConfirmPassword(resultSet.getString(6));
				user.setUserAddress(resultSet.getString(7));
				user.setUserLandmark(resultSet.getString(8));
				user.setUserCity(resultSet.getString(9));
				user.setUserState(resultSet.getString(10));
				user.setUserPincode(resultSet.getString(11));
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}
	
	
	
	
	

}
