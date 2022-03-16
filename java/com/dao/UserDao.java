package com.dao;

import com.webapp.User;

public interface UserDao {
	public  boolean userRegister(User user);
	
	public User userLogin(String userEmailID,String userPassword);
	

}
