<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.databaseconnection.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="ie-edge">
	<title>Welcome page</title>
	<%@include file="All components/CSS.jsp" %>
	<link rel="stylesheet" href="css/index.css">
</head>
<body class="Welcomepage-body">
    <h1 class="Welcome-page-Heading">Greener Garderns</h1>
    <h2 class="Welcome-page-subheading">Welcome to Greener World!</h2>
    <div class="Welcomepage-link-Container">
    	<a  class="enter-link" href="Categories.jsp">Enter the Greener Gardens!</a>
    </div>
</body>
</html>