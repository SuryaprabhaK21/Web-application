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

    <title>Login</title>
</head>
<body>
    
    
    <form id="login-account-form" action="login" method="POST">
    <%
    String message=request.getParameter("message");
    if("notexist".equals(message))
    {
    %>	
    <h2 style='color:red;text-align:center;font-size:18px'>Incorrect User email or password</h2>
    <%} %>
    <%if("invalid".equals(message))
   	{
   	%>
   	<h2 style='color:red;text-align:center;font-size:18px'>Something went wrong.Try again!</h2>
    <%} %>
    <%if("success".equals(message))
   	{
   	%>
   	<h2 style='color:black;text-align:center;font-size:18px'>Logout successfully!</h2>
    <%} %>
        <div class="title">
            <h2>Login</h2>
        </div>
        
        <!--email-->

        <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter the email id" name="email">
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

        <button class="submit-button" type="submit">Submit</button>

        <div class="submit">
            <a href="Register.jsp">New user,register here!</a>
            <a href="ForgotPassword.jsp" style="color:red">Forgot Password</a>
        </div>
    </form>
    
    <script src="js/User Login.js"></script>
</body>
</html>
