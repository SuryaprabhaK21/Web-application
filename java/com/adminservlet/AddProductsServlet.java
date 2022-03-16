package com.adminservlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.ProductsDaoImplement;
import com.databaseconnection.DatabaseConnection;
import com.webapp.ProductDetails;

@WebServlet("/AddProducts")
@MultipartConfig
public class AddProductsServlet extends HttpServlet{
	
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
			Part productImage=request.getPart("image");
			String fileName=productImage.getSubmittedFileName();
			
			ProductDetails productDetails=new ProductDetails(productId,productName,productCategory,productPrice,productActive,fileName,"admin");
			
			//System.out.println(productDetails);
			ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
			boolean check=productsDaoImplement.addProducts(productDetails);
			HttpSession session=request.getSession();
			//F:\java web application\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\GreenerGardens-webapplication\products
			if(check)
			{
				String path=getServletContext().getRealPath("")+"products";
				//System.out.println(path);
				File file=new File(path);
				productImage.write(path+File.separator+fileName);
				response.sendRedirect("Admin/AdminAddProducts.jsp?message=done");
			}
			else
			{
				
				response.sendRedirect("Admin/AdminAddProducts.jsp?message=error");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();		
		}
	
	}

}
