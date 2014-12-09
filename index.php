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
					<li class="ativo"><a href="index.html">Home</a></li>
					<li><a href="portfolio.html">Portfólio</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="contato.html">Contato</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="container-fluid">
		
		<!--SLIDE SHOW-->
		<div class="row">
			<div class="col-xs-12">
				<div id="slide-show" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slide-show" data-slide-to="0" class="active"></li>
						<li data-target="#slide-show" data-slide-to="1"></li>
						<li data-target="#slide-show" data-slide-to="2"></li>
						<li data-target="#slide-show" data-slide-to="3"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img data-src="holder.js/100%x500" alt="">
							<div class="carousel-caption">
					            <h3>Primeiro Slide</h3>
					            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				          	</div>
						</div>
						<div class="item">
							<img data-src="holder.js/100%x500" alt="">
							<div class="carousel-caption">
					            <h3>Segundo Slide</h3>
					            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				          	</div>
						</div>
						<div class="item">
							<img data-src="holder.js/100%x500" alt="">
							<div class="carousel-caption">
					            <h3>Terceiro Slide</h3>
					            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				          	</div>
						</div>
						<div class="item">
							<img data-src="holder.js/100%x500" alt="">
							<div class="carousel-caption">
					            <h3>Quarto Slide</h3>
					            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				          	</div>
						</div>
					</div>

					<!--CONTROLES-->
					  <a class="left carousel-control" href="#slide-show" data-slide="prev">
				        <span class="glyphicon glyphicon-chevron-left"></span>
				      </a>
				      <a class="right carousel-control" href="#slide-show" data-slide="next">
				        <span class="glyphicon glyphicon-chevron-right"></span>
				      </a>
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