<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/user/login.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>

<body>
	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<c:if test="${invalidLogin == true}">
		<div class="warning">
			<p>Usuário ou senha inválidos.</p>
		</div>
	</c:if>
	
	<c:if test="${alert != null}">
		<div class="warning">
			<p><c:out value="${alert}"/></p>
		</div>
	</c:if>
	
	<div class="login-form">
	    <form action='<c:url value="/login"/>' method="post">
	        <h2 class="text-center">Login</h2>       
	        <div class="form-group">
	            <input type="text" class="form-control" name="username" id="username" placeholder="Usuário" required="required">
	        </div>
	        <div class="form-group">
	            <input type="password" class="form-control" name="password" id="password" placeholder="Senha" required="required">
	        </div>
	        <div class="form-group">
	            <button type="submit" class="btn btn-primary btn-block">Entrar</button>
	        </div>
	        <div class="clearfix">
	            <label class="pull-left checkbox-inline"><input type="checkbox"> Lembrar dados</label>
	            <a href="#" class="pull-right">Esqueceu a senha?</a>
	        </div>        
	    </form>
	    <p class="text-center"><a href='<c:url value="/view/user/cadastro.jsp"/>'>Crie uma conta</a></p>
	</div>
	
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
