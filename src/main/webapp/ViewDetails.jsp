<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.dao.ProductsDaoImplement" %>
<%@ page import="java.util.*" %>
<%@ page import="com.webapp.ProductDetails" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>View Product Details</title>
	<%@include file="All components/CSS.jsp" %>
	<style>
		.product-name h2
		{
			font-family:algeria;
			color:green;
			font-weight:bold;
			padding:3px;
			margin:5px;
			font-size:28px;
			/*text-align:center;*/
		}
		.description
		{
			margin:5px;
		}
		.description h2
		{
			font-family:algeria;
			color:black;
			padding:2px;
			font-size:20px;
		}
		.description h3
		{
			font-family:Sans-serif;
			font-size:25px;
		}
		body
		{
			background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('images/backgroundjpg.jpg');
			background-repeat: no-repeat;
			background-size: cover;
			min-height:100vh;
		}
		.viewcard
		{
			background-color:white;
			align-items:center;
		}
		img
		{
			text-align:center;
			
		}
		.fa-indian-rupee-sign
		{
			color:black;
			background:yellow;
			padding-top:5px;
			padding-bottom:5px;
			padding-left:11px;
			padding-right:11px;
			font-size:30px;
			border-radius:50px;
			margin:5px;
		}
		.fa-arrow-rotate-left
		{
			color:white;
			background:green;
			padding:5px;
			font-size:30px;
			border-radius:50px;
			margin:5px;
		}
		.fa-truck
		{
			color:red;
			padding:5px;
			font-size:30px;
			margin:5px;
		}
		btn-danger,span
		{
			font-weight:bold !important;
		}
	</style>
</head>
<body>
	<%@include file="All components/NewNavBar.jsp" %>
	<%
	int productId=Integer.parseInt(request.getParameter("id"));
	ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
	ProductDetails productDetails=productsDaoImplement.getProductById(productId);
	%>
	<div class="container p-5">
		<div class="row p-5">
			<div class="col-md-6 border p-3 viewcard text-center">
				<img src="products/<%=productDetails.getProductImage() %>" style="height:250px;width:200px;"><br>
				<div class="product-name">
					<h2><%=productDetails.getProductName() %></h2>
				</div>
				<div class="text-center m-2">
						<a href="" class="btn btn-danger btn-sm">Rs.<%=productDetails.getProductPrice() %></a>
					    <a href="" class="btn btn-warning btn-sm "><i class="fa-solid fa-cart-plus"></i> ADD TO CART</a>
				</div>
				
				
			</div>
			<div class="col-md-6 text-left border p-3 viewcard">
				<div class="description">
					<h3 style="font-weight:bold;">DESCRIPTION</h3>
					<h2 class="heading"><span >Product Name:</span><%=productDetails.getProductName() %></h2>
					<h2 class="heading"><span>Product Category:</span><%=productDetails.getProductCategory() %></h3>
				</div>
				<div class="row">
					<div class="col-md-4 text-center">
						<i class="fa-solid fa-indian-rupee-sign"></i>
						<p>Cash on Delivery</p>
					</div>
					<div class="col-md-4 text-center">
						<i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
						<p>Easy returns policy</p>
					</div>
					<div class="col-md-4 text-center">
						<i class="fa-solid fa-truck fa-3x"></i>
						<p>Fast Delivery</p>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>