<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="../All components/CSS.jsp" %>
<link rel="stylesheet" href="../css/AdminNavBar.css" />
<style>
	.btn-danger
	{
		font-weight:bold;
		text-transform:uppercase;
		font-family:sans-serif;
		color:white !important;
	}
	h4
	{
	font-family:algeria;
	font-size:20px;
	}
	.btn-custom
	{
	text-transform:none;
	font-weight:normal;
	}
	.pop-up-text
	{
	margin:10px;
	}
</style>
</head>
<body>


<div class="container-fluid navbar-upper-container p-3">
	<div class="row">
		<div class="col-md-9">
			<h1>GREENER GARDENS <i class="fa-brands fa-pagelines"></i></h1>
		</div>
		
		<div class="col-md-3">
			<c:if test="${not empty userobj }">
			<a class="btn btn-warning"><i class="fa-solid fa-user"></i> ${userobj.username}</a>
			<a  data-toggle="modal" data-target="#exampleModalCenter"class="btn btn-danger">Logout <i class="fa-solid fa-right-to-bracket"></i></a>
			</c:if>
			<c:if test="${empty userobj }">
			<a href="../Login.jsp" class="btn btn-warning"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
			<a href="../Register.jsp" class="btn btn-warning"><i class="fa-solid fa-user"></i> Register</a>
			</c:if>
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

<nav class="navbar navbar-expand-lg navbar-custom sticky-top">
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse navbar-text " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active ">
        <a class=" nav-link " href="AdminHome.jsp"><i class="fa-solid fa-house"></i> Home<span class="sr-only">(current)</span></a>
      </li>
    </ul>
    
  </div>
</nav>
</body>
</html>