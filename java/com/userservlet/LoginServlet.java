package com.userservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDaoImplement;
import com.databaseconnection.DatabaseConnection;

import com.dao.UserDaoImplement;
import com.databaseconnection.DatabaseConnection;
import com.webapp.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			UserDaoImplement userDaoImplement=new UserDaoImplement(DatabaseConnection.getConnection());
			HttpSession session=request.getSession();
			String userEmailID=request.getParameter("email");
			String userPassword=request.getParameter("password");
			
			if("suryaprabha.k@gmail.com".equals(userEmailID) && "Suryaprabha@123".equals(userPassword))
			{
				User user=new User();
				user.setUsername("Suryaprabha K");
				session.setAttribute("userobj",user);
				session.setAttribute("email",userEmailID);
				response.sendRedirect("Admin/AdminHome.jsp");
			}
			else
			{
				User user=userDaoImplement.userLogin(userEmailID,userPassword);
				if(user!=null)
				{
					session.setAttribute("userobj",user);
					//session.setAttribute("email",userEmailID);
					response.sendRedirect("Homepage.jsp");
				}
				else
				{
					response.sendRedirect("Login.jsp?message=notexist");
				}
				
			}
			
		//	System.out.println(userEmailID+" "+userPassword);
			
			/*User user=new User();
			
			user.setUserEmailID(userEmailID);
			
			user.setUserPassword(userPassword);
		*/
			
			//HttpSession session=request.getSession();
			/*UserDaoImplement userDaoImplement=new UserDaoImplement(DatabaseConnection.getConnection());
			boolean check=userDaoImplement.userRegister(user);
			if(check)
			{
				//System.out.println("User Registered Successfully");
				//session.setAttribute("successMessage","User Registered Successfully");
				response.sendRedirect("Register.jsp?message=valid");
			}
			else
			{
				//System.out.println("Something wrong");
				//session.setAttribute("failedMessage","Something went wrong!");
				response.sendRedirect("Register.jsp?message=invalid");
			}*/
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("Login.jsp?message=invalid");
		}
	}

}
