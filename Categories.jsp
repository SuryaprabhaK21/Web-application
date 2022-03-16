<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Categories Page</title>
        <meta name="description" content="This is the description">
        <%@include file="All components/CSS.jsp" %>
        <link rel="stylesheet" href="css/categories.css">
    </head>
    <body>
    	<%@include file="All components/NewNavBar.jsp" %>
        <section class="Homepage-container">
            <a class="Homepage-image-items-title-link"href="Homepage.jsp#indoor plants">
            <div class="Homepage-item-categories">
                <img src="images/indoorplants.jpg" class="Homepage-item-images">
                <div class="Homepage-image-items-title">Indoor plants</div>
            </div>
            </a>
            <a class="Homepage-image-items-title-link"href="Homepage.jsp#flowering plants">
            <div class="Homepage-item-categories">
                <img src="images/flowering plants.jpg" class="Homepage-item-images">
                <div class="Homepage-image-items-title">Flowering plants</div>
            </div>
            </a>
            <a class="Homepage-image-items-title-link"href="Homepage.jsp#succulents">
            <div class="Homepage-item-categories">
                <img src="images/succulents.jpg" class="Homepage-item-images">
                <div class="Homepage-image-items-title">Succulents</div>
            </div>
            </a>
            <a class="Homepage-image-items-title-link" href="Homepage.jsp#pots">
            <div class="Homepage-item-categories">
                <img src="images/pots.jpg" class="Homepage-item-images">
                <div class="Homepage-image-items-title">Pots</div>
            </div>
            </a>
            <a class="Homepage-image-items-title-link" href="Homepage.jsp#recent launches">
            <div class="Homepage-item-categories">
                <img src="images/deals.jpg" class="Homepage-item-images">
                <div class="Homepage-image-items-title">Recent Launches</div>
            </div>
            </a>
        </section>
        <%@include file="All components/Footer.jsp" %>
    </body>
</html>