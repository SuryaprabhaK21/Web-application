<%@page import="java.util.List"%>
<%@page import="com.webapp.Cart"%>
<%@page import="com.webapp.User"%>
<%@page import="com.databaseconnection.DatabaseConnection"%>
<%@page import="com.dao.CartDaoImplement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cart page</title>
	<%@include file="../All components/CSS.jsp" %>
	<link rel="stylesheet" href="css/cart.css">
	<script src="js/cart.js"></script>
</head>
<body>
	<%@include file="All components/NewNavBar.jsp" %>
	
	<c:if test="${empty userobj}">
		<c:redirect url="Login.jsp"></c:redirect>
	</c:if>
	
		
	
	<section class="container content-section" id="cart">
	    <h2 class="section-header">CART</h2>
	    <div class="cart-row">
	        <span class="cart-item cart-header cart-column">ITEM</span>
	        <span class="cart-price cart-header cart-column">PRICE</span>
	        <span class="cart-quantity cart-header cart-column">QUANTITY</span>
	        <span class="cart-quantity cart-header cart-column">ACTION</span>
	    </div>
	    <%
	    User user=(User)session.getAttribute("userobj");
	    CartDaoImplement cartDaoImplement=new CartDaoImplement(DatabaseConnection.getConnection());
	    List<Cart> list=cartDaoImplement.getProductsByUser(user.getId());
	    Double totalPrice=0.00;
	    for(Cart cart:list)
	    	
		{
	    	totalPrice=cart.getTotalPrice();
		%>
			
        <div class="cart-items">
	        <div class="cart-row">
	            <div class="cart-item cart-column">
	                <img class="cart-item-image" src="products/<%=cart.getProductImage() %>" width="100" height="100">
	                <span class="cart-item-title"><%=cart.getProductName() %></span>
	            </div>
	            <span class="cart-price cart-column">Rs.<%=cart.getProductPrice() %></span>
	            <div class="cart-quantity cart-column">
	            	<a class="btn btn-sm btn-decre" href="Quantityincreasedecrease"><i class="fas fa-minus-square"></i></a>
	                <input class="cart-quantity-input" type="text" value="1">
	                <a class="btn btn-sm btn-decre" href="Quantityincreasedecrease"><i class="fas fa-plus-square"></i></a>
	            </div>
	            <div class="cart-quantity cart-column">
	                <button class="btn btn-danger" type="button">REMOVE</button>
	            </div>
	        </div>
        </div>
        <%
		}
		%>
        <div class="cart-total">
            <strong class="cart-total-title">Total</strong>
            <span class="cart-total-price">Rs.<%=totalPrice%></span>
        </div>
        <a href="Billingaddress.jsp" style="width:150px;"class="btn btn-primary btn-purchase" type="button">PURCHASE</a>
	</section>  
</body>
</html>