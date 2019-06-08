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
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href='<c:url value="/assets/css/user/formulario.css"/>'>
	<!-- FAVICON -->
	<link rel="shortcut icon" href='<c:url value="/assets/img/favIcon/favicon.png"/>'/>
</head>
<body>

	<!-- RENDER TOP MENU -->
	<%@ include file="/view/shared/top_menu.jsp" %>
	
	<div class="container featured-text">
		<p class="page-header">Preencha o formulario!</p>
		<form name="formularioForm" method="POST" action='<c:url value="/edit"/>' enctype="multipart/form-data">
		  <input type="hidden" id="id" name="id" value=<c:out value="${movie.id}"/>>
		  <div class="form-row">
		    <div class="form-group col-md-3">
		      <label for="inputText1">Nome do Filme: <c:out value="${movie.name}"/></label>
		      <input type="text" class="form-control" id="nomefilme" name="nomefilme" placeholder="nome">
		    </div>
		    <div class="form-group col-md-2">
		      <label for="inputDate">Data de lançamento: <c:out value="${movie.launch_date}"/></label>
		      <input type="date" class="form-control" id="data" name="data" placeholder="dd/mm/aaaa">
		    </div>
		  </div>
		    <div class="form-row">
		    <div class="form-group col-md-2">
		      <label for="inputText2">Direção: <c:out value="${movie.direction}"/></label>
		      <input type="text" class="form-control" id="diretor" name="diretor" placeholder="Nome do diretor">
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-1.5">
		      <label for="inputDatetime">Duração: <c:out value="${movie.duration}"/></label>
		      <input type="number" class="form-control" id="inputduracao" name="duracao" placeholder="Em minutos">
		    </div>
		    <div class="form-group col-md-2">
		      <label>Categoria: <c:out value="${movie.category_id}"/></label>
		      <select class="form-control" id="inputcategoria" name="categoria">
		        <option selected>Escolha...</option>
		        <option>Animação</option>
		        <option>Aventura</option>
		        <option>Comédia</option>
		        <option>Romance</option>
		        <option>Sci-fi</option>
		        <option>Terror</option>
		      </select>
		    </div>
		    <div class="form-group col-md-3">
		      <label for="inputText4">Genero: <c:out value="${movie.genre_id}"/></label>
		      <input type="text" class="form-control" id="inputGenero" name="genero" placeholder="Ex:herois,suspense,anime,gore, etc.">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="FormInputFile1">Imagem Cartaz: <c:out value="${movie.poster}"/></label>
		    <input type="file" class="form-control-file" id="inputImg" name="img">
		  </div>
		    <div class="horizon-middle">
		    <label for="inputSinopse">Sinopse</label>
		    <textarea class="form-control char-count" id="inputSinopse" name="sinopse" rows="2" placeholder='<c:out value="${movie.description}"/>' maxlength="500"></textarea>
		  	<small><span id="inputSinopse">500</span></small> caracteres restantes
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

</html>
