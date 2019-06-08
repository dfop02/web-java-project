<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Catálogo</title>
	
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CAROUSEL CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/home/home.css"/>'>
	<!-- MY CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/catalog/catalog.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>
<body>

	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<c:forEach items="${genres}" var="genre">
		<!-- TITLE OF CATEGORY -->
		<div id='<c:out value="${genre.id}"/>' class="container-fluid featured-text">
			<p align="center"><c:out value="${genre.name}"/></p>
		</div>
		<br>
		
		<!-- CAROUSEL -->
		<div class="horizon-middle">
			<div id="carouselControls" class="carousel slide w-100" data-ride="carousel" data-interval="false">
				<div class="carousel-inner w-100" role="listbox">
					<div class="carousel-item row no-gutters active">
						<c:forEach items="${movies}" var="movie">
							<c:if test="${movie.genre_id == genre.id}">
								<a href='<c:url value="/movie?id=${movie.id}"/>' data-target="#ModalCenter${movie.id}"><img src='<c:url value="${movie.poster}"/>'></a>					
				      		</c:if>
						</c:forEach>
			    	</div>
				</div>
			</div>
		</div>
	</c:forEach>
	
	<!-- RENDER BOTTOM MENU -->
	<footer class="footer">
		<%@ include file="/view/shared/bottom_menu.jsp" %>
	</footer>
</body>

<!-- JQUERY -->
<script src='<c:url value="/assets/jquery/jquery-3.4.0.js"/>'></script>
<!-- BOOTSTRAP JS -->
<script src='<c:url value="/assets/bootstrap/js/bootstrap.min.js"/>'></script>

</html>
