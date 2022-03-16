<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminAddProducts.css">
<title>Admin Add Product</title>
</head>
<body>
	<%@include file="AdminNavBar.jsp" %>
	<c:if test="${empty userobj}">
		<c:redirect url="../Login.jsp"/>
	</c:if>
	<%
	String message=request.getParameter("message");
	if("done".equals(message))
	{
	%>
	<h3 class="alert">Product Added Successfully!</h3>
	<%} %>
	<%
	if("error".equals(message))
	{
	%>
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
	<%} %>
	
	<%
	int productID=1;
	try
	{
		Connection connection=DatabaseConnection.getConnection();
		Statement statement=connection.createStatement();
		ResultSet resultSet=statement.executeQuery("SELECT max(Productid) FROM productdetails");
		while(resultSet.next())
		{
			productID=resultSet.getInt(1);
			productID=productID+1;
		}
	}
	catch(Exception e)
	{
		
	}
	%>
    <div class="add-new-product-container">
    	<form id="add-new-products-form" action="../AddProducts" method="POST" enctype="multipart/form-data">
    		<h3 style="color: red;font-family:algeria;font-weight:bold;font-size:20px;">Product ID: <%out.println(productID); %> </h3>
    		<input type="hidden" id="productid" name="id" value=<%out.println(productID); %> required>
    		<div class="title">
            	<h2>Add Product</h2>
        	</div>
        	<!--div class="input-group">
            	<label for="productname">Product ID</label>
            	<input type="hidden" id="productid" value=<%//out.println(productID); %> required>
        	</div -->
        	<div class="input-group">
            	<label for="productname">Product Name</label>
            	<input type="text" id="productname" placeholder="Enter the product name" name="name" required>
        	</div>
        	<div class="input-group">
            	<label for="productcategory">Product Category</label>
            		<select name="category" required>
            			<option value="Indoor Plants">Indoor Plants</option>
            			<option value="Flowering Plants">Flowering Plants</option>
            			<option value="Succulents">Succulents</option>
            			<option value="Pots">Pots</option>
            		</select>
        	</div>
        	<div class="input-group">
            	<label for="productprice">Product Price</label>
            	<input type="number" step="0.001" id="productprice" placeholder="Enter the product price" name="price" required>
        	</div>
        	<div class="input-group">
           		<label for="active">Active</label>
            	<select name="active" required>
            			<option value="Yes">Yes</option>
            			<option value="No">No</option>
           		</select>
           </div>
        	<div class="input-group">
            	<label for="productimage">Product Image</label>
            	<input type="file" id="productimage"  name="image" required>
        	</div>
        	<button class="submit-button" type="submit">Add product</button>
    	</form>
    </div>
    <%//@include file="AdminFooter.jsp" %>
</body>
</html>
