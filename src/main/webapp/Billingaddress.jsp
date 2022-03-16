<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Billing address</title>
		<%@include file="../All components/CSS.jsp" %>
		<link rel="stylesheet" href="css/AdminAddProducts.css">
		<style>
			body
			{
				/*min-height:100vh;*/
				min-height:100vh;
				background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('images/backgroundjpg.jpg');
				background-repeat: no-repeat;
				background-size: cover;
				/*overflow-x:scroll;*/
			}
			.billing-address-container
			{
				display: flex;
				justify-content: center;
				align-items: center;
				margin:20px auto;/*to place form container with a margin to nav bar*/
				
			}
			#billing-address-form
			{
				width: 500px;
				height: 670px;
				padding: 20px;
				background-color: white;
				/*overflow: hidden;*/
			}
			.btn-warning
			{
				color:black;
				background-color:orange !important;
				border-outline:yellow;
				font-weight:bold;
				font-family:sans-serif;
			}
			.btn-warning:hover
			{
				color:black;
				background-color:yellow;
				border-outline:yellow;
			}
			.btn-success
			{
				color:white;
				background-color:green !important;
				border-outline:green;
				font-weight:bold !important;
				font-family:sans-serif;
				text-transform:uppercase;
			}
			select
			{
				font-family:algeria;
			}
			/*.btn-success:hover
			{
				color:black;
				background-color:yellow;
				border-outline:yellow;
			}*/
			
			
		</style>
	</head>
	<body>
		<%@include file="All components/NewNavBar.jsp" %>
			<div class="billing-address-container">
				<form id="billing-address-form" action="" method="POST">
		        <div class="title">
            	<h2>Billing address</h2>
        	</div>
        	<!--div class="input-group">
            	<label for="productname">Product ID</label>
            	<input type="hidden" id="productid" value=<%//out.println(productID); %> required>
        	</div -->
        	<div class="form-row">
        	<div class="input-group col-md-6">
	            <label for="username">Username</label>
	            <input type="text" id="username" placeholder="Enter the username" name="username">
          
  			</div>
        
        <!--email-->

        <div class="input-group col-md-6">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter the email id" name="email">
          
        </div>
        </div>
        
        <!--mobilenumber-->
		<div class="form-row">
        <div class="input-group col-md-6">
            <label for="mobilenumber">Mobile Number</label>
            <input type="mobilenumber" id="mobilenumber" placeholder="Enter the mobile number" name="mobilenumber">
            
        </div>
        
        <!--password-->

        <div class="input-group col-md-6">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter the password" name="password">
        </div>
        </div>
        
        <!--Address-->
		<div class="form-row">
        <div class="input-group col-md-6">
            <label for="address">Address</label>
            <input type="text" id="address" placeholder="Enter the address" name="address">
            
        </div>
        
        <!--Landmark-->

        <div class="input-group col-md-6">
            <label for="landmark">Landmark</label>
            <input type="text" id="landmark" placeholder="Enter the landmark" name="landmark">
            
        </div>
        </div>
        
        <!-- city -->
        <div class="form-row">
        <div class="input-group col-md-6">
            <label for="city">City</label>
            <input type="text" id="city" placeholder="Enter the city" name="city">
            
        </div>
        
        <!-- State -->
        
        <div class="input-group col-md-6">
            <label for="state">State</label>
            <input type="text" id="state" placeholder="Enter the state" name="state">
        </div>
        </div>
        
        
        <!-- Zip -->
        <div class="form-row">
        <div class="input-group col-md-6">
            <label for="pincode">Pin-code</label>
            <input type="pincode" id="pincode" placeholder="Enter the pincode" name="pincode">
        </div>
        
        <!-- Payment mode -->
        
        <div class="input-group col-md-6">
           		<label for="payment-mode">Payment Mode</label>
            	<select name="paymentmode" required>
            			<option value="Cash On Delivery">Cash On Delivery</option>
            			<option value="Debit/Credit Card">Debit/Credit Card</option>
           		</select>
        </div>
        </div>

        <div class="row">
			<a href="" class="btn btn-success btn-sm mt-5 mb-3 ml-5 mr-1 p-2">Order Now</a>
			<a href="Homepage.jsp" class="btn btn-warning btn-sm mt-5 mb-3 ml-5 mr-5 p-2">Continue shopping</a>			
		</div>
    	</form>
			</div>
			
	</body>
</html>