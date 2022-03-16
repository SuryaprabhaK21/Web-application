package com.userservlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.CartDaoImplement;
import com.dao.ProductsDaoImplement;
import com.databaseconnection.DatabaseConnection;
import com.webapp.Cart;
import com.webapp.ProductDetails;

@WebServlet("/Addtocart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			int productId=Integer.parseInt(request.getParameter("id"));
			int userId=Integer.parseInt(request.getParameter("userid"));
			ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
			ProductDetails productDetails=productsDaoImplement.getProductById(productId);	
			Cart cart=new Cart();
			cart.setProductId(productId);
			cart.setUserId(userId);
			cart.setProductName(productDetails.getProductName());
			cart.setProductImage(productDetails.getProductImage());
			cart.setProductPrice(productDetails.getProductPrice());
			cart.setTotalPrice(productDetails.getProductPrice());
			
			CartDaoImplement cartDaoImplement=new CartDaoImplement(DatabaseConnection.getConnection());
			boolean check=cartDaoImplement.addToCart(cart);
			HttpSession session=request.getSession();
			if(check)
			{
				if("Indoor Plants".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("addCart","Product added to cart successfully");
					response.sendRedirect("Indoorplants.jsp");
				}
				else if("Flowering Plants".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("addCart","Product added to cart successfully");
					response.sendRedirect("Floweringplants.jsp");
				}
				else if("Succulents".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("addCart","Product added to cart successfully");
					response.sendRedirect("Succulents.jsp");
				}
				else if("Pots".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("addCart","Product added to cart successfully");
					response.sendRedirect("Pots.jsp");
				}
				//String path=getServletContext().getRealPath("")+"products";
				//System.out.println("Added to cart successfully!");
				//session.setAttribute("addCart","Product added to cart successfully");
				//File file=new File(path);
				//productImage.write(path+File.separator+fileName);
				//response.sendRedirect("Indoorplants.jsp");
			}
			else
			{
				if("Indoor Plants".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("failed","Something wrong");
					response.sendRedirect("Indoorplants.jsp");
				}
				else if("Flowering Plants".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("failed","Something wrong");
					response.sendRedirect("Floweringplants.jsp");
				}
				else if("Succulents".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("failed","Something wrong");
					response.sendRedirect("Succulents.jsp");
				}
				else if("Pots".equals(productDetails.getProductCategory()))
				{
					//System.out.println("Added to cart successfully!");
					session.setAttribute("failed","Something wrong");
					response.sendRedirect("Pots.jsp");
				}
				//session.setAttribute("failed","Something wrong");
				//response.sendRedirect("Indoorplants.jsp");
				//response.sendRedirect("Admin/AdminAddProducts.jsp?message=error");
				//System.out.println("Product not added to cart");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();		
		}
	
	}

}
