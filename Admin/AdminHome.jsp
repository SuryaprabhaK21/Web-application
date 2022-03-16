<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Homepage</title>
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminHome.css" />
<style>
	
</style>
</head>
<body>
    <%@include file="AdminNavBar.jsp" %>
	<%
    	if(session.getAttribute("email")==null)
    	{
    		response.sendRedirect("../Login.jsp");
    	}
    %>
    <c:if test="${not empty userobj }">
    <h3 class="admin-welcome">Welcome,${userobj.username}</h3>
    </c:if>
    <div class="container">
    	<div class="row p-5">
    		<div class="col-md-3 ">
    			<a style="text-decoration:none;"href="AdminAddProducts.jsp">
	    			<div class="card bg-dark" >
	    				<div class="card-body text-center">
	    					<i class="fa-solid fa-square-plus fa-3x"></i><br>
	    					<h3 >Add Products</h3>
	    				</div>
	    			</div>
	    		</a>
    		</div>
    		<div class="col-md-3">
    			<a style="text-decoration:none;"href="AdminAllProducts.jsp">
	    			<div class="card bg-dark">
	    				<div class="card-body text-center">
	    					<i class="fa-solid fa-pen-to-square fa-3x"></i><br>
	    					<h3>All/Edit Products</h3>
	    				</div>
	    			</div>
	    		</a>
    		</div>
    		<div class="col-md-3">
    			<a style="text-decoration:none;"href="AdminOrders.jsp">
	    			<div class="card bg-dark">
	    				<div class="card-body text-center">
	    					<i class="fa-solid fa-shop fa-3x"></i><br>
	    					<h3>Orders</h3>
	    				</div>
	    			</div>
	    		</a>
    		</div>
    		<div class="col-md-3">
    			<a style="text-decoration:none;" href="../logout" data-toggle="modal" data-target="#exampleModalCenter">
	    			<div class="card bg-dark">
	    				<div class="card-body text-center">
	    					<i class="fa-solid fa-arrow-right-from-bracket fa-3x"></i><br>
	    					<h3>Logout</h3>
	    				</div>
	    			</div>
	    		</a>
    		</div>
    	</div>
    </div>
    <!-- start of Logout--  >

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<div class="text-center">
	      		<h4 class="pop-up-text">Do you want to Logout</h4>
		        <button type="button" class="btn btn-success btn-custom" data-dismiss="modal">Close</button>
		        <a href="../logout" type="button" class="btn btn-danger btn-custom">Logout</a>
	      	</div>
	        
	      </div>
	      <div class="modal-footer">
	        
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- End of Logout -->
    <%@include file="AdminFooter.jsp" %>
</body>

</html>