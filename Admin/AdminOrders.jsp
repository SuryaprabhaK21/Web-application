<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminAddProducts.css">
<title>Admin Orders</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<%@include file="AdminNavBar.jsp" %>
<div style="color: white; text-align: center; font-size: 30px;padding-bottom:15px;font-family:algeria;margin-top:7px;">All Orders <i class="fa-solid fa-shop "></i></div>
<%
String message=request.getParameter("message");
if("done".equals(message))
{
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<%
if("wrong".equals(message))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>

<table class="table">
	<thead>
	  <tr>
	    <th scope="col">Order ID</th>
	    <th scope="col">Userame</th>
	    <th scope="col">EmailID</th>
	    <th scope="col">MobileNumber</th>
	    <th scope="col">Address</th>
	    <th scope="col">Product Name</th>
	    <th scope="col"><i class="fa fa-inr"></i> Price</th>
	    <th scope="col">Payment Mode</th>
	    <!--th>Status</th-->
	    
	  </tr>
	</thead>
    <tbody>
    	<tr>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td><i class="fa fa-inr"></i></td>
		     <td></td>
		     
	   </tr> 
	   <tr>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td><i class="fa fa-inr"></i></td>
		     <td></td>
		     
	   </tr> 
	   <tr>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td><i class="fa fa-inr"></i></td>
		     <td></td>
		     
	   </tr> 
	</tbody>
</table>
<br>
<br>
<br>

</body>
</html>