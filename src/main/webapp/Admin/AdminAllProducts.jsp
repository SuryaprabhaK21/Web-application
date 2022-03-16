<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.dao.ProductsDaoImplement" %>
<%@ page import="java.util.*" %>
<%@ page import="com.webapp.ProductDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminAddProducts.css">
<title>Admin All Products</title>
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
	<c:if test="${empty userobj}">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<div style="color: white; text-align: center; font-size: 30px;padding-bottom:15px;font-family:algeria;">All Products <i class='fab fa-elementor'></i></div>
	<%
	String message=request.getParameter("message");
	if("done".equals(message))
	{
	%>
	<h3 class="alert">Product Updated Successfully!</h3>
	<%} %>
	<%
	if("delete".equals(message))
	{
	%>
	<h3 class="alert">Product Deleted Successfully!</h3>
	<%} 
	%>
	<%
	if("wrong".equals(message))
	{
	%>
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
	<%} 
	%>

<table class="table">
	<thead>
	  <tr>
	  	<th scope="col">Id</th>
	    <th scope="col">Image</th>
	    <th scope="col">Name</th>
	    <th scope="col">Category</th>
	    <th scope="col"><i class="fa fa-inr"></i> Price</th>
	    <th>Status</th>
	    <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
	  </tr>
	</thead>
    <tbody>
    <%
    ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
    List<ProductDetails> list=productsDaoImplement.getAllProducts();
    for(ProductDetails productDetails:list)
    {%>
    <tr>
    		 <td><%=productDetails.getProductId() %></td>
		     <td><img src="../products/<%=productDetails.getProductImage() %>" style="width:70px;height:70px;background-color:white;"></td>
		     <td><%=productDetails.getProductName() %></td>
		     <td><%=productDetails.getProductCategory() %></td>
		     <td><i class="fa fa-inr"></i><%=productDetails.getProductPrice() %></td>
		     <td><%=productDetails.getProductActive() %></td>
		     <td ><a class="btn btn-warning-edit"  style="font-weight:bold;"href="AdminEditProducts.jsp?id=<%=productDetails.getProductId()%>"><i class='fas fa-pen-fancy'></i> Edit</a>
		     <a class="btn btn-danger-delete"  style="font-weight"href="../AdminDeleteProducts?id=<%=productDetails.getProductId()%>"><i class="fa-solid fa-trash-can"></i> Delete</a></td>
	   </tr> 
    <%} 
    %>
	</tbody>
</table>
<br>
<br>
<br>

</body>
</html>