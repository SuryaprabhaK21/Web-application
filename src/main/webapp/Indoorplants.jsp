<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.dao.ProductsDaoImplement" %>
<%@ page import="java.util.*" %>
<%@ page import="com.webapp.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Indoor plants</title>
		<%@include file="All components/CSS.jsp" %>
		<link rel="stylesheet" href="css/Homepage.css">
		<style>
			.section-header {
			    font-family: "Algeria";
			    padding: 25px;/*To increase space around heading*/
			    font-size: 25px;
			    font-weight: bold;
			    text-transform:uppercase;
			    color: white!important;
			    text-align: center;
			    margin-left:auto;
			    margin-right:auto;
			    margin-top:10px;
			    margin-bottom:10px;
			    background-image:url('images/backgroundjpg.jpg')!important;
			    height: max-content;
			    width:100%;
			    background-attachment: fixed!important;
			    background-position: center!important;
			    background-repeat: no-repeat!important;
			    background-size: cover!important;
			}
			.shop-item-price
			 {
			   /* flex-grow: 1;*/
			    color: white;
			    padding: 3px;
			    font-weight: bold;
			    margin:5px;
			    text-align:center;
			    align-items:center;
			 }
			 p
			 {
				margin:5px !important;
			 }
			 .card
			 {
				margin-bottom:25px !important;
			 }
			 #toast 
			 {
				min-width: 300px;
				position: fixed;
				bottom: 30px;
				left: 50%;
				margin-left: -125px;
				background: #333;
				padding: 10px;
				color: white;
				text-align: center;
				z-index: 1;
				font-size: 18px;
				visibility: hidden;
				box-shadow: 0px 0px 100px #000;
			}
			
			#toast.display
			{
				visibility: visible;
				animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
			}
			
			@keyframes fadeIn {from { bottom:0;
				opacity: 0;
			}
			
			to {
				bottom: 30px;
				opacity: 1;
			}
			
			}
			@keyframes fadeOut {form { bottom:30px;
				opacity: 1;
			}
			
			to {
				bottom: 0;
				opacity: 0;
			}
			}  
		</style>
	</head>
	<body>
		<%@include file="All components/NewNavBar.jsp" %>
		<%User user=(User)session.getAttribute("userobj"); %>
		<c:if test="${not empty addCart}">
			<div id="toast">${addCart}</div>
			<script type="text/javascript">
					showToast();
					function showToast(content)
					{
					    $('#toast').addClass("display");
					    $('#toast').html(content);
					    setTimeout(()=>{
					        $("#toast").removeClass("display");
					    },2000)
					}	
			</script>
			<c:remove var="addCart" scope="session"/>
		</c:if>
		
	<div class="container">
		<h2 class="section-header">Indoor Plants</h2>
		<div class="row">
			<%
			ProductsDaoImplement productsDaoImplementIndoor=new ProductsDaoImplement(DatabaseConnection.getConnection());
			List<ProductDetails> indoorPlantsList=productsDaoImplementIndoor.getAllIndoorPlants();
			for(ProductDetails productDetails:indoorPlantsList)
			{%>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:250px;padding:5px;" class="img-thumblin">
						<p style="font-weight:bold;font-family:algeria;font-size:23px;color:green;"><%=productDetails.getProductName() %></p>
						<p>Category:<%=productDetails.getProductCategory() %></p>
						
						<div class="row">
							<a href="" class="btn btn-success btn-sm mt-3 mb-1 ml-5 mr-1">Rs.<%=productDetails.getProductPrice() %></a>
							<%if(user==null)
							{%>
								<a href="Login.jsp" class="btn btn-warning btn-sm mt-3 mb-1 ml-1 mr-1 p-2"><i class="fa-solid fa-cart-plus"></i> ADD TO CART</a>
							<%
							}
							else
							{%>
								<a href="Addtocart?id=<%=productDetails.getProductId()%>&&userid=<%=user.getId()%>" class="btn btn-warning btn-sm mt-3 mb-1 ml-1 mr-1 p-2"><i class="fa-solid fa-cart-plus"></i> ADD TO CART</a>
							<%
							} 
							%>	
							<a href="ViewDetails.jsp?id=<%=productDetails.getProductId() %>" class="btn btn-warning1 btn-sm mt-3 mb-1 ml-1 mr-3 p-2">VIEW</a>
						</div>
				    </div>
				</div>
			</div>
			<%
			} 
			%>
		</div>
	</div>
	<%@include file="All components/Footer.jsp" %>
	</body>
</html>