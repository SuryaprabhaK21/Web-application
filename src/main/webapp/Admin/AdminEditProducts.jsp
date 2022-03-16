<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="com.dao.ProductsDaoImplement" %>
<%@ page import="com.webapp.ProductDetails" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminAddProducts.css">
<title>Admin Edit Product</title>
</head>
<body>
	<%@include file="AdminNavBar.jsp" %>
	<c:if test="${empty userobj}">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	
	<%
	int productId=Integer.parseInt(request.getParameter("id"));
	ProductsDaoImplement productsDaoImplement=new ProductsDaoImplement(DatabaseConnection.getConnection());
	ProductDetails productDetails=productsDaoImplement.getProductById(productId);
	%>
    <div class="add-new-product-container">
    	<form id="add-new-products-form" action="../EditProducts" method="POST">
    		<h3 style="color: red;font-family:algeria;font-weight:bold;font-size:20px;">Product ID: <%=productDetails.getProductId()%> </h3>
    		<input type="hidden" id="productid" name="id" value="<%=productDetails.getProductId()%>" required>
    		<div class="title">
            	<h2>Edit Product</h2>
        	</div>
        	<!--div class="input-group">
            	<label for="productname">Product ID</label>
            	<input type="hidden" id="productid" value=<%//out.println(productID); %> required>
        	</div -->
        	<div class="input-group">
            	<label for="productname">Product Name</label>
            	<input type="text" id="productname" placeholder="Enter the product name" name="name" value="<%=productDetails.getProductName()%>"required>
        	</div>
        	<div class="input-group">
            	<label for="productcategory">Product Category</label>
            		<select name="category" required>
            			<% 
	            		if("Indoor plants".equals(productDetails.getProductCategory())){
	            		%>
	            		<option value="Indoor plants">Indoor Plants</option>
            			<option value="Flowering plants">Flowering Plants</option>
            			<option value="Succulents">Succulents</option>
            			<option value="Pots">Pots</option>
	            		<%
	            		}else if("Flowering plants".equals(productDetails.getProductCategory())){
	            		%>
	            		<option value="Indoor plants">Indoor Plants</option>
            			<option value="Flowering plants">Flowering Plants</option>
            			<option value="Succulents">Succulents</option>
            			<option value="Pots">Pots</option>
	            		<%
	            		}else if("Succulents".equals(productDetails.getProductCategory())){
	            		%>
	            		<option value="Indoor plants">Indoor Plants</option>
            			<option value="Flowering plants">Flowering Plants</option>
            			<option value="Succulents">Succulents</option>
            			<option value="Pots">Pots</option>
	            		<%
	            		}
	            		else{
	            		%>
	            		<option value="Indoor plants">Indoor Plants</option>
            			<option value="Flowering plants">Flowering Plants</option>
            			<option value="Succulents">Succulents</option>
            			<option value="Pots">Pots</option>
	            		<%
	            		}
	            		%>
            			
            		</select>
        	</div>
        	<div class="input-group">
            	<label for="productprice">Product Price</label>
            	<input type="number" step="0.001" id="productprice" placeholder="Enter the product price" name="price" value="<%=productDetails.getProductPrice()%>"required>
        	</div>
        	<div class="input-group">
           		<label for="active">Active</label>
            	<select name="active" required>
            		<% 
            		if("Yes".equals(productDetails.getProductActive())){
            		%>
            		<option value="Yes">Yes</option>
            		<option value="No">No</option>
            		<%
            		}else{
            		%>
            		<option value="Yes">Yes</option>
            		<option value="No">No</option>
            		<%
            		}
            		%>
           		</select>
           </div>
        	<button class="submit-button" type="submit">Save changes</button>
    	</form>
    </div>
    
     
</body>
</html>
