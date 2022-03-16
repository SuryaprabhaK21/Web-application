<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/registerlogin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Create account</title>
</head>
<body>
    <form id="create-account-form" action="register" method="POST">
    
        <div class="title">
            <h2>Create Account</h2>
        </div>
        <%
	    String message=request.getParameter("message");
	    if("valid".equals(message))
	    {
	    %>
	    <h2 style='color:green;text-align:center;font-size:15px'>Successfully Registered</h2><br>
	    <%} %>
	    <%
	    if("invalid".equals(message))
	    {	
	    %>
	    <h2 style='color:white;text-align:center;font-size:15px'>Something went wrong!Try again</h2><br>
	    <%} %>
        
        <!--Username-->

        <div class="input-group">
            <label for="username">Username</label>
            <input type="text" id="username" placeholder="Enter the username" name="username">
            <i class="fas fa-check-circle"></i><!--for success-->
			<i class="fas fa-exclamation-circle"></i><!--for error-->
            <p>Error message</p>
        </div>
        
        <!--email-->

        <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter the email id" name="email">
            <i class="fas fa-check-circle"></i><!--for success-->
			<i class="fas fa-exclamation-circle"></i><!--for error-->
            <p>Error message</p>
        </div>
        
        <!--mobilenumber-->

        <div class="input-group">
            <label for="mobilenumber">Mobile Number</label>
            <input type="mobilenumber" id="mobilenumber" placeholder="Enter the mobile number" name="mobilenumber">
            <i class="fas fa-check-circle"></i><!--for success-->
			<i class="fas fa-exclamation-circle"></i><!--for error-->
            <p>Error message</p>
        </div>
        
        <!--password-->

        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter the password" name="password">
            <i class="fas fa-check-circle"></i><!--for success-->
			<i class="fas fa-exclamation-circle"></i><!--for error-->
            <p>Error message</p>
        </div>
        
        <!--confirmpassword-->

        <div class="input-group">
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" placeholder="Retype the password" name="confirmpassword">
            <i class="fas fa-check-circle"></i><!--for success-->
			<i class="fas fa-exclamation-circle"></i><!--for error-->
            <p>Error message</p>
        </div>

        <button class="submit-button" type="submit">Submit</button>
        <div class="submit">
            <a href="Login.jsp">Existing user,login here!</a>
        </div>
    </form>
    
    
    <script src="js/register.js"></script>
</body>
</html>