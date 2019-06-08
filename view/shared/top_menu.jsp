<!-- TOP MENU CSS -->
<link rel="stylesheet" href='<c:url value="/assets/css/shared/topmenu.css"/>'>

<!-- TOP MENU -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href='<c:url value="/home"/>'>SCORED</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link btn-custom-outline-success btn-2" href='<c:url value="/home"/>'>Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active dropdown">
        <a class="nav-link btn-custom-outline-success btn-2 dropdown-toggle" href='<c:url value="/catalog"/>' id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Catálogo
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href='<c:url value="/catalog#1"/>'>Ação</a>
          <a class="dropdown-item" href='<c:url value="/catalog#2"/>'>Animação</a>
          <a class="dropdown-item" href='<c:url value="/catalog#3"/>'>Terror</a>
          <a class="dropdown-item" href='<c:url value="/catalog#4"/>'>Comédia</a>
          <a class="dropdown-item" href='<c:url value="/catalog#5"/>'>Romance</a>
          <a class="dropdown-item" href='<c:url value="/catalog#9"/>'>Ficção Ciêntifica</a>
          <a class="dropdown-item" href='<c:url value="/catalog#10"/>'>Fantasia Ciêntifica</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href='<c:url value="/catalog"/>'>Todos os gêneros</a>
        </div>
      </li>
      <c:if test="${not empty cookie.username.value}">
	      <li class="nav-item active">
	        <a class="nav-link btn-custom-outline-success btn-2" href='<c:url value="/view/user/logged/formulario.jsp"/>'>Adicionar Filme</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link btn-custom-outline-success btn-2" href='<c:url value="/show"/>'>Editar Filmes</a>
	      </li>
	  </c:if>
	</ul>
    <c:if test="${empty cookie.username.value}">
	    <form class="form-inline my-2 my-lg-0" action='<c:url value="/login"/>' method="post">
	      <input class="form-control mr-sm-2" type="text" name="username" id="username" placeholder="Usuário" aria-label="Usuário" required>
	      <input class="form-control mr-sm-2" type="password" name="password" id="password" placeholder="Senha" aria-label="Senha" required>
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
	    </form>
    </c:if>
    <c:if test="${not empty cookie.username.value}">
    	<div class="welcome">
    		<p>Bem vindo, <c:out value="${cookie.username.value}"/>.</p>
    	</div>
		<form action='<c:url value="/logout"/>' method="post">
			<input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Logout" >
		</form>
    </c:if>
  </div>
</nav>
<!-- END TOP MENU -->
		