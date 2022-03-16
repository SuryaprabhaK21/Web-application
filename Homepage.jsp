<%@ page language="java" contentType="text/html; 
   charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.dao.ProductsDaoImplement" %>
<%@ page import="java.util.*" %>
<%@ page import="com.webapp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<%@include file="All components/CSS.jsp" %>
<link rel="stylesheet" href="css/Homepage.css">
<style type="text/css">
/*.background-image
{
	background-image : url("images/finalbackgrounf.jpeg");
	height:max-content;
	width:100%;
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    text-align:right;
    padding:90px;
    color:#184d47;
    
    font-size:70px;
    font-weight:bolder;
}*/
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
.shop-item-price {
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
</style>
</head>
<body>
	<%@include file="All components/NewNavBar.jsp" %>
	<%User user=(User)session.getAttribute("userobj"); %>
	
	<!-- Recent launches -->
	
	<div class="container" id="recent launches">
		<h2 class="section-header">Recent Launches</h2>
		<div class="row">
		<%
		ProductsDaoImplement productsDaoImplementRecent=new ProductsDaoImplement(DatabaseConnection.getConnection());
		List<ProductDetails> recentList=productsDaoImplementRecent.getRecentLaunches();
		for(ProductDetails productDetails:recentList)
		{%>
		
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:200px;padding:5px;" class="img-thumblin">
						<p><%=productDetails.getProductName() %></p>
						<p>Category:<%=productDetails.getProductCategory() %></p>
						<div class="row">
							<a href="Login.jsp" class="btn btn-success btn-sm mt-3 mb-1 ml-5 mr-1">Rs.<%=productDetails.getProductPrice() %></a>
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
	<div class="Explore-all">
		<a href="RecentProducts.jsp" class="btn btn-success btn-small">Explore All</a>
	</div>
	
	<!-- End of Recent Launches -->
	
	<!-- Indoor Plants -->
	
	<div class="container" id="indoor plants">
		<h2 class="section-header">Indoor Plants</h2>
		<div class="row">
			<%
			ProductsDaoImplement productsDaoImplementIndoor=new ProductsDaoImplement(DatabaseConnection.getConnection());
			List<ProductDetails> indoorPlantsList=productsDaoImplementIndoor.getIndoorPlants();
			for(ProductDetails productDetails:indoorPlantsList)
			{%>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:200px;padding:5px;" class="img-thumblin">
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
	<div class="Explore-all">
		<a href="Indoorplants.jsp" class="btn btn-success btn-small">Explore All</a>
	</div>
	
	<!-- End of Indoor Plants -->
	
	<!-- Flowering Plants -->
	
	<div class="container" id="flowering plants">
		<h2 class="section-header">Flowering Plants</h2>
		<div class="row">
			
			<%
			ProductsDaoImplement productsDaoImplementFlowering =new ProductsDaoImplement(DatabaseConnection.getConnection());
			List<ProductDetails> floweringPlantsList=productsDaoImplementFlowering.getFloweringPlants();
			for(ProductDetails productDetails:floweringPlantsList)
			{%>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:200px;padding:5px;" class="img-thumblin">
						<p><%=productDetails.getProductName() %></p>
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
	<div class="Explore-all">
		<a href="Floweringplants.jsp" class="btn btn-success btn-small">Explore All</a>
	</div>
	
	<!-- End of Flowering Plants -->
	
	<!-- Succulents -->
	
	<div class="container" id="succulents">
		<h2 class="section-header">Succulents</h2>
		<div class="row">
			<%
			ProductsDaoImplement productsDaoImplementSucculents =new ProductsDaoImplement(DatabaseConnection.getConnection());
			List<ProductDetails> succulentsList=productsDaoImplementSucculents.getSucculents();
			for(ProductDetails productDetails:succulentsList)
			{%>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:200px;padding:5px;" class="img-thumblin">
						<p><%=productDetails.getProductName() %></p>
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
	<div class="Explore-all">
		<a href="Succulents.jsp" class="btn btn-success btn-small">Explore All</a>
	</div>
	
	<!-- End of Succulents -->
	
	<!-- Pots -->
	
	<div class="container" id="pots">
		<h2 class="section-header">Pots</h2>
		<div class="row">
			<%
			ProductsDaoImplement productsDaoImplementPots =new ProductsDaoImplement(DatabaseConnection.getConnection());
			List<ProductDetails> potsList=productsDaoImplementPots.getPots();
			for(ProductDetails productDetails:potsList)
			{%>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img alt="" src="products/<%=productDetails.getProductImage() %>" style="width:200px;height:200px;padding:5px;" class="img-thumblin">
						<p><%=productDetails.getProductName() %></p>
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
	<div class="Explore-all">
		<a href="Pots.jsp" class="btn btn-success btn-small">Explore All</a>
	</div>
	
	<!-- End of Pots -->
	<%@include file="All components/Footer.jsp" %>
</body>
</html>