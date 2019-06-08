<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Scored</title>
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/home/home.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>

<body>
	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<div class="container-fluid featured-text">
		<p>Destaques</p>
	</div>
	
	<!-- CAROUSEL -->
	<div class="horizon-middle">
		<div id="carouselControls" class="carousel slide w-100" data-ride="carousel" data-interval="false">
		  <div class="carousel-inner w-100" role="listbox">
		    <div class="carousel-item row no-gutters active">
		      <c:forEach items="${movies}" var="movie" begin="0" end="4">
		        <a href='<c:url value="/movie?id=${movie.id}"/>'><img src='<c:url value="${movie.poster}"/>' alt="First slide"></a>
		      </c:forEach>
		    </div>
		    <div class="carousel-item row no-gutters">
		      <c:forEach items="${movies}" var="movie" begin="5" end="9">
		        <a href='<c:url value="/movie?id=${movie.id}"/>'><img src='<c:url value="${movie.poster}"/>' alt="Second slide"></a>
		      </c:forEach>
		    </div>
		    <div class="carousel-item row no-gutters">
		      <c:forEach items="${movies}" var="movie" begin="10" end="14">
		        <a href='<c:url value="/movie?id=${movie.id}"/>'><img src='<c:url value="${movie.poster}"/>' alt="Third slide"></a>
		      </c:forEach>
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselControls" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselControls" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
	<!-- END CAROUSEL -->
	
	<!-- RENDER BOTTOM MENU -->
	<footer class="footer">
		<%@ include file="/view/shared/bottom_menu.jsp" %>
	</footer>
</body>

<!-- JQUERY -->
<script src='<c:url value="/assets/jquery/jquery-3.4.0.js"/>'></script>
<!-- CUSTOM JS -->
<script src='<c:url value="/assets/js/home/home.js"/>'></script>
<!-- BOOTSTRAP JS -->
<script src='<c:url value="/assets/bootstrap/js/bootstrap.min.js"/>'></script>

</html>
