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
import com.webapp.ProductDetails;

@WebServlet("/EditProducts")
public class EditProductsServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			int productId=Integer.parseInt(request.getParameter("id"));
			String productName=request.getParameter("name");
			String productCategory=request.getParameter("category");
			Double productPrice=Double.parseDouble(request.getParameter("price"));
			String productActive=request.getParameter("active");
			
			ProductDetails productDetails=new ProductDetails();
			productDetails.setProductId(productId);
			productDetails.setProductName(productName);
			productDetails.setProductCategory(productCategory);
			productDetails.setProductPrice(productPrice);
			productDetails.setProductActive(productActive);
			
			ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
			boolean check=productsDaoImplement.updateProducts(productDetails);
			HttpSession session=request.getSession();
			if(check)
			{
				response.sendRedirect("Admin/AdminAllProducts.jsp?message=done");
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
