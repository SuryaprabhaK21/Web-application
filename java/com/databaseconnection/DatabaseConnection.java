package com.databaseconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	private static Connection connection;
	public static Connection getConnection()
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenergardens-webapp","root","KSP@mysql123");
			return connection;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
	}

}
