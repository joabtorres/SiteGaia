<!doctype html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Carlos Gaia</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/themplete.css" media="all">
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<h2 class="logo-marca text-left "><img src="_imagens/logo.png"alt="Logo do Carlos Gaia" class="hidden-xs"><img src="_imagens/logo2.png"alt="Logo do Carlos Gaia" class="visible-xs"></h2>
			</div>
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav" id="menu">
					<li><a href="index.html">Home</a></li>
					<li><a href="portfolio.html">Portfólio</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li class="ativo"><a href="contato.html">Contato</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="container-fluid">
		
		<!--CONTATO-->
<div class="row">
		<div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li><a href="contato.html">Contato</a></li>
			</ol>
			
			<div class="row">
				<div class="col-sm-6 col-md-6">
					<h2 class="text-center title-pagina">Contato</h2>
					<form action="" class="form">
						<div class="form-group">
							<label for="cNome">Nome:</label>
							<input type="text" class="col-xs-12" name="tNome" id="cNome" placeholder="Informe seu nome completo">
						</div>
						<div class="form-group">
							<label for="cEmail">E-mail:</label>
							<input type="email" class="col-xs-12" name="tEmail" id="cEmail" placeholder="Informe seu e-mail" >
						</div>
						<div class="form-group">
							<label for="cTelefone">Telefone:</label>
							<input type="tel" class="col-xs-12" name="tTelefone" id="cTelefone" placeholder="(99) 99999-9999" >
						</div>
						<div class="form-group">
							<label for="cAssunto">Assunto:</label>
							<input type="text" class="col-xs-12" name="tAssunto" id="cAssunto" placeholder="Informe seu o Assunto">
						</div>
						<div class="form-group">
							<label for="cMenssagem">Mensagem:</label>
						<textarea class="form-control" rows="4" id="cMensagem" placeholder="Mensagem ..."></textarea>
						</div>
						<p class="text-center"><button type="button" class="btn btn-success ">Enviar</button> 
							<button type="button" class="btn btn-danger ">Cancelar</button></p>
					</form>
				</div>

				<div class="col-sm-4 col-md-4 col-sm-offset-1 col-md-offset-1">
					<div class="informacoes-do-cliente">
						<h3 class="text-center title-pagina">Carlos Gaia</h3>
						<p class="text-center"><img src="_imagens/foto-carlos-gaia.jpg"></p>
						<p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!--RODAPE-->
		<div class="row" id="rodape">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-md-8 col-lg-8  col-sm-6 parte-esq">
						<h2>Contatos</h2>
						<p><span class="glyphicon glyphicon-earphone"></span> (93) 99147-0342 <br>
						   <span class="glyphicon glyphicon-envelope"></span> carlllosgaia@hotmail.com
						</p>
					</div>
					<div class="col-md-3 col-lg-4  col-sm-6">
						<h2>Redes socias</h2>
						<a href="#" target="_blank"><img src="_imagens/facebook.png" alt="Facebook do Carlos Gaia"></a> | <a href="#" target="_blank"><img src="_imagens/twitter.png" alt="Twitter do Carlos Gaia"></a>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="row" id="rodape2">
			<div class="col-md-4 col-md-offset-1 col-lg-4  col-sm-5 parte-esq">
				© 2014 - Carlos Gaia | Todos os direitos reservados 
			</div>
			<div class="col-md-4 col-md-offset-3 col-lg-4  col-sm-5">
				Desenvolvidor por <strong><a target="_blank" href="http:\\www.endogenese.com.br">Endogênese Soluções</a></strong>
			</div>
			</div>
		</footer>
	</section>
	<script type="text/javascript" src="js/holder.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>