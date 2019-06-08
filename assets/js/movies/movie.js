function alertaImagem () {
	alert ("Distribuido por WarnerBros!")
}

function mudarImagem() {   
	document.getElementById("alterar").src = '<c:url value="/assets/img/moviePoster/elencomadmax.jpg"/>';
}

function voltaImagem() {
	document.getElementById("alterar").src='<c:url value="/assets/img/moviePoster/madmax1.jpg"/>';
}
