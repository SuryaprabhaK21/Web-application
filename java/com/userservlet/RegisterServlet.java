package com.userservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.dao.UserDaoImplement;
import com.databaseconnection.DatabaseConnection;
import com.webapp.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String userName=request.getParameter("username");
			String userEmailID=request.getParameter("email");
			String userMobileNumber=request.getParameter("mobilenumber");
			String userPassword=request.getParameter("password");
			String userConfirmPassword=request.getParameter("confirmpassword");
			
			/*For checking
			System.out.println(userName+" "+userEmailID+" "+userMobileNumber+" "+userPassword+" "+userConfirmPassword);*/
			
			User user=new User();
			user.setUsername(userName);
			user.setUserEmailID(userEmailID);
			user.setUserMobileNumber(userMobileNumber);
			user.setUserPassword(userPassword);
			user.setUserConfirmPassword(userConfirmPassword);
			
			//HttpSession session=request.getSession();
			UserDaoImplement userDaoImplement=new UserDaoImplement(DatabaseConnection.getConnection());
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
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
