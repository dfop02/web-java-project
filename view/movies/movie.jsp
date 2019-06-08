<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Descrição do <c:out value="${movie.name}"/></title>
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/movies/movie.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>
<body>
	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<span id='topo'></span>
	
	<div class="titulo">
		<p><c:out value="${movie.name}"/></p>
	</div>
	
	<div class="container-fluid">
		<div class="imagem">
			<img src='<c:url value="${movie.poster}"/>'/>
		</div>
	</div>
		
	<div class="container-fluid">
		<div class="sinopse">
			<p>Sinopse</p>
		</div>
		<div class="description">
			<center> <p><c:out value="${movie.description}"/></p> </center>
		</div>
	
	
	
		<div class="info">
			<left> <p> Dirigido por: <c:out value="${movie.direction}."/></p> </left>
		</div>
	
		<div class="info">
			<left> <p> A longa possui a duração de: <c:out value="${movie.duration} minutos."/></p> </left>
		</div>
	
	
	
		<div class="info">
			<left> <p>Seu lançamento em: <c:out value="${movie.launch_date}."/></p> </left>
		</div>
	</div>
	
	<button class="btn2"> <a href='#topo'>Início</a> </button>
	
	
	
	
	<!-- RENDER BOTTOM MENU -->
	<footer class="footer">
		<%@ include file="/view/shared/bottom_menu.jsp" %>
	</footer>
</body>

<!-- JQUERY -->
<script src='<c:url value="/assets/jquery/jquery-3.4.0.js"/>'></script>
<!-- CUSTOM JS -->
<script src='<c:url value="/assets/js/movies/movie.js"/>'></script>
<!-- BOOTSTRAP JS -->
<script src='<c:url value="/assets/bootstrap/js/bootstrap.min.js"/>'></script>

</html>
