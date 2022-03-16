
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.navbar-upper-container
{
    background-image: url("images/homepage_background.jpg");
    height: max-content;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
h1
{
	color:green;
	font-weight:bold;
	font-family:algeria;
	font-size:45px;
}
.form-control:hover
{
 border-outline:green;
}
.btn-outline-success
{
font-weight:bold;
}
.btn-warning1
{
	color:black;
	background-color:yellow;
	border-outline:yellow;
	font-weight:bold;
	font-family:sans-serif;
}
.btn-warning1:hover
{
	color:black;
	background-color:yellow;
	border-outline:yellow;
}
.navbar-custom
{
	background-color:#184d47;
}
.navbar-custom .navbar-brand 
{
	color:yellow;
}
.navbar-custom .navbar-nav li a
{
	color:yellow;
}
.navbar .nav-item .nav-link:hover
{
	background-color:lightgrey;
	color:black;
	border-radius:10px;
}
.btn-warning
{
	font-weight:bold;
	text-transform:uppercase;
	font-family:sans-serif;
	color:black ;
}
.btn-danger
{
	font-weight:bold;
	text-transform:uppercase;
	font-family:sans-serif;
	color:white !important;
}
.btn-warning:hover {
    color: white;
}
i .fa-solid fa-book
{
   color:red;
}
.main-nav
{
	position:fixed;
}
</style>
</head>
<body>


<div class="container-fluid navbar-upper-container p-3">
	<div class="row">
		<div class="col-md-9">
			<h1>GREENER GARDENS <i class="fa-brands fa-pagelines"></i></h1>
		</div>
		<div class="col-md-8">
			<form class="form-inline my-2 my-lg-0">
			    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
   			</form>
		</div>
		<div class="col-md-4">
		<c:if test="${not empty userobj }">
			<a href="Addtocart.jsp" class="btn btn-warning1  my-2 my-sm-0"><i class="fa-solid fa-cart-shopping"></i> CART</a>
			<a class="btn btn-warning"><i class="fa-solid fa-user"></i> ${userobj.username}</a>
			<a  data-toggle="modal" data-target="#exampleModalCenter"class="btn btn-danger">Logout <i class="fa-solid fa-right-to-bracket"></i></a>
			</c:if>
			<c:if test="${empty userobj }">
			<a href="Login.jsp" class="btn btn-warning "><i class="fa-solid fa-right-to-bracket"></i> Login</a>
			<a href="Register.jsp" class="btn btn-warning "><i class="fa-solid fa-user"></i> Register</a>
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
	        <a href="logout" type="button" class="btn btn-danger btn-custom">Logout</a>
      	</div>
        
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- End of Logout -->

<!-- sticky-top to place nav bar sticked at top -->
<nav class="navbar navbar-expand-lg navbar-custom sticky-top">
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse navbar-text " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active ">
        <a class=" nav-link " href="Homepage.jsp"><i class="fa-solid fa-house"></i><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
      	<a class="nav-link " href="RecentProducts.jsp">Recent Launches </a></li>
      <li class="nav-item active">
        <a class="nav-link " href="Indoorplants.jsp"> Indoor Plants</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="Floweringplants.jsp"> Flowering Plants</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="Succulents.jsp"> Succulents</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="Pots.jsp">Pots</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="#">About Us</a></li>
      
      <!--li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li-->
      <!--li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li-->
    </ul>
    <div class="col-md-3">
			<form class="form-inline my-2 my-lg-0">
			    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			    <button class="btn btn-warning1  my-2 my-sm-0 mr-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
   			</form>
	</div>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-warning1 mr-1 my-2 my-sm-0" type="submit"><i class="fa-solid fa-gear"></i> Settings</button>
      <button class="btn btn-warning1 mr-1 my-2 my-sm-0" type="submit"><i class="fa-solid fa-message"></i> Contact Us</button>
    </form>
  </div>
</nav>
</body>
</html>