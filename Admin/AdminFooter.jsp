<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<style>
			/*.footer 
			{
				background-image:url('../images/backgroundjpg.jpg');
				height: max-content;
			    width:100%;
			    background-attachment: fixed;
			    background-position: center;
			    background-repeat: no-repeat;
			    background-size: cover;
				color:yellow;
				padding-top:35px;
				padding-bottom:25px;
				display:inline-block;	
				position: fixed;
			    left: 0;
			    bottom: 0;
			    width: 100%;
			}
			.footer h4
			{
			    
				font-family:algeria;
				font-size:20px;
			}
			.footer a
			{
			   color:yellow;
			   text-decoration:none;
			   text-align:center;
			   display:inline-block;
			   padding-right:20px;
			   padding-left:50px;
			}*/
			.footer {
			    background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url("../images/backgroundjpg.jpg");
			    height: max-content;
			    background-attachment: fixed;
			    background-position: center;
			    background-repeat: no-repeat;
			    background-size: cover;
			    /*To place footer at last of page*/
			    position: fixed;
			    left: 0;
			    bottom: 0;
			    right:0;
			    width: 100%;
			}
			/*.quick-links
			{
			    color: yellow;
			    font-size: 20px;
			    font-weight: bold;
			    display: inline-block;/*To diplays points near by list*/
			   /* min-width: 30%;/*Min width of texts*/
			    /*padding:10px;
			    font-family:algeria;
			    /*margin-right:90px;
			}*/
			.nav a {
			    display: inline-block;
			    padding: 10px;/*space between lists in all direction*/
			    color: white;
			    text-decoration: none;
			    /*justify-content: center;*/
			    font-family:algeria;
			    font-size:17px;
			}
			.footer-a-links:hover
			{
			    color: yellow;
			}        
		</style>
	</head>
	<body>
		<div class="footer" >
			<div class="main-footer-container">
				<!--h4 class="quick-links">Quick Links</h4-->
		        <ul class="nav footer-nav">
	                    <li>
	                        <a href="" class="footer-a-links" target="_blank">Contact Us
	                        </a>
	                    </li>
	                    <li>
	                        <a href="" class="footer-a-links" target="_blank">FAQ
	                        </a>
	                    </li>
	                    <li>
	                        <a href="" class="footer-a-links" target="_blank">Help
	                        </a>
	                    </li>
	             </ul>
			</div>
		</div>
	</body>
</html>