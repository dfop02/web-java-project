<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Adicionar filme</title>
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>'>
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/user/formulario.css"/>'>
</head>

<body>
	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<div class="warning">
		<c:if test="${result != null}">
			<c:out value="${result == true ? \"Filme adicionado com sucesso!\" : \"Falha ao adicionar o filme!\"}"/>
		</c:if>
	</div>
	
	<div class="container featured-text">
		<p class="page-header">Preencha o formulario!</p>
		<form name="formularioForm" method="post" action='<c:url value="/formularioForm"/>' enctype="multipart/form-data">
		  <div class="form-row">
		    <div class="form-group col-md-3">
		      <label for="inputText1">Nome do Filme</label>
		      <input type="text" class="form-control" id="nomefilme" name="nomefilme" placeholder="Filme" required>
		    </div>
		    <div class="form-group col-md-2">
		      <label for="inputDate">Data de lançamento</label>
		      <input type="date" class="form-control" id="data" name="data" placeholder="dd/mm/aaaa" required>
		    </div>
		  </div>
		    <div class="form-row">
		    <div class="form-group col-md-2">
		      <label for="inputText2">Direção</label>
		      <input type="text" class="form-control" id="diretor" name="diretor" placeholder="Nome do diretor" required>
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-1.5">
		      <label for="inputDatetime">Duração</label>
		      <input type="number" class="form-control" id="inputduracao" name="duracao" placeholder="Em minutos" required>
		    </div>
		    <div class="form-group col-md-2">
		      <label>Categoria</label>
		      <select class="form-control" id="inputcategoria" name="categoria" required>
		        <option selected>Escolher...</option>
		        <option>Animação</option>
		        <option>Aventura</option>
		        <option>Comédia</option>
		        <option>Romance</option>
		        <option>Sci-fi</option>
		        <option>Terror</option>
		      </select>
		    </div>
		    <div class="form-group col-md-3">
		      <label for="inputText4">Generos</label>
		      <input type="text" class="form-control" id="inputGenero" name="genero" placeholder="Ex:herois,suspense,anime,gore, etc." required>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="FormInputFile1">Imagem Cartaz</label>
		    <input type="file" class="form-control-file" id="inputImg" name="img" required>
		  </div>
		    <div class="horizon-middle">
		    <label for="inputSinopse">Sinopse</label>
		    <textarea class="form-control char-count" id="inputSinopse" name="sinopse" rows="2" placeholder="Max 500 caracteres" maxlength="500" required></textarea>
		  	<p class="text-muted"><small><span id="inputSinopse">500</span></small> caracteres restantes</p>
		  </div>
		  <div class="form-group">
		    <div class="checkbox">
		      <label>
		        <input type="checkbox" data-error="Você deve marcar este campo!" required> Confirmar.
		      </label>
		      <div class="help-block with-errors"></div>
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">Enviar</button>
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
	<!-- CUSTOM JS -->
	<script src='<c:url value="/assets/js/user/contador.js"/>'></script>
</html>