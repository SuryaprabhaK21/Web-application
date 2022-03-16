package com.adminservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ProductsDaoImplement;
import com.databaseconnection.DatabaseConnection;

@WebServlet("/AdminDeleteProducts")
public class AdminDeleteProducts extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			int productId=Integer.parseInt(request.getParameter("id"));
			ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
			boolean check=productsDaoImplement.deleteProducts(productId);
			HttpSession session=request.getSession();
			if(check)
			{
				response.sendRedirect("Admin/AdminAllProducts.jsp?message=delete");
			}
			else
			{
				response.sendRedirect("Admin/AdminAllProducts.jsp?message=wrong");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
	

}
