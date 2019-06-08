<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registre-se</title>
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/user/cadastro.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>

<body>
	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<c:if test="${alert != null}">
		<li class="warning">
			<p><c:out value="${alert}"/></p>
		</li>
	</c:if>
	
	<div class="container featured-text">
		<p class="page-header">Preencha o formulario!</p>
		
		<form id="formvalid" data-toggle="validator" role="form" method="post" action='<c:url value="/NewUser"/>'>
		  <div class="form-group">
		    <label for="textNome" class="control-label">Nome</label>
		    <input type="text" id="textNome" name="textNome" class="form-control" placeholder="Digite seu Nome..." required>
		  </div>
		  
		  <div class="form-group">
		    <label for="inputEmail" class="control-label">Email</label>
		    <input id="inputEmail" name="inputEmail" class="form-control" placeholder="Digite seu E-mail" type="email" 
		      data-error="Por favor, informe um e-mail correto." required>
		    <div class="help-block with-errors"></div>
		  </div>
		  
		  <div class="form-group">
		    <label for="textNome" class="control-label">Usuário</label>
		    <input type="text" id="textUsuario" name="textUsuario" class="form-control" placeholder="Digite seu Usuario..." required>
		  </div>
		  
		  <div class="form-group">
		    <label for="inputPassword" class="control-label">Senha</label>
		    <input type="password" class="form-control" id="inputPassword" name="inputPassword" placeholder="Digite sua Senha..."  
		      data-minlength="6" required>
		    <span class="help-block">Mínimo de seis (6) digitos</span>
		  </div>
		  
		  <div class="form-group">
		    <label for="inputConfirm" class="control-label">Confirme a Senha</label>
		    <input type="password" class="form-control" id="inputConfirm" placeholder="Confirme sua Senha..." 
		      data-match="#inputPassword" data-match-error="Atenção! As senhas não estão iguais." required>
		    <div class="help-block with-errors"></div>
		  </div>
		  
		  <div class="form-group">
		    <div class="checkbox">
		      <label>
		        <input type="checkbox" data-error="Você deve marcar este campo!" required> Marque este item.
		      </label>
		      <div class="help-block with-errors"></div>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <button type="submit" class="btn btn-primary">Enviar</button>
		  </div>
		</form>
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
	<!-- VALIDATORs -->
	<script src='<c:url value="/assets/bootstrap/js/validator.min.js"/>'></script>
	<script src='<c:url value="/assets/bootstrap/js/validator.js"/>'></script>
	
</html>
