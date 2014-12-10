<!DOCTYPE html>
<!--[if lt IE 9]>
<html id="ie" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<title>Carlos Gaia</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="../css/themplete.css" media="all">
    <link rel="stylesheet" href="../css/blog.css">
<?php
	/* We add some JavaScript to pages with the comment form
	 * to support sites with threaded comments (when in use).
	 */
	if ( is_singular() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

	/* Always have wp_head() just before the closing </head>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to add elements to <head> such
	 * as styles, scripts, and meta tags.
	 */
	wp_head();
?>

</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<body <?php body_class(); ?>>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<h2 class="logo-marca text-left "><a href="../index.html"><img src="../_imagens/logo.png"alt="Logo do Carlos Gaia" class="hidden-xs"><img src="../_imagens/logo2.png"alt="Logo do Carlos Gaia" class="visible-xs"></a></h2>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				</div>
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav" id="menu">
					<li><a href="../index.html">Home</a></li>
					<li ><a href="../portfolio.html">Portfólio</a></li>
					<li class="ativo"><a href="index.php">Blog</a></li>
					<li><a href="../contato.html">Contato</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="container-fluid">
		
		<!--PORTIFOLIO-->
		<div  class="container-categoria">
			<div class="row">
			<div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="../index.html">Home</a></li>
				<li><a href="index.php">Blog</a></li>
			</ol>


<div id="page" class="hfeed">

	<div id="main" class="clearfix">