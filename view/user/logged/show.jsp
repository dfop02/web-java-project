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
	<link rel="stylesheet" href='<c:url value="/assets/css/user/show.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>
<body>

	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<c:if test="${empty result}">
		<c:out value="${result}"/>
	</c:if>
	
	<table>
		<tr>
			<td>Nome</td>
			<td>Ativo</td>
			<td>Duração</td>
			<td>Direção</td>
			<td>Data de Lançamento</td>
			<td>Editar</td>
		</tr>
		<c:forEach items="${movies}" var="movie">
			<tr>
				<td><c:out value="${movie.name}"/></td>
				<td><c:out value="${movie.active == true ? 'sim' : 'nao'}"/></td>
				<td><c:out value="${movie.duration}"/></td>
				<td><c:out value="${movie.direction}"/></td>
				<td><c:out value="${movie.launch_date}"/></td>
				<td><a href='<c:url value="/editpage?id=${movie.id}"/>'>Editar</a></td>
			</tr>
		</c:forEach>
	</table>
	
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
