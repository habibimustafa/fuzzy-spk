<?php error_reporting(0); ?>
<!DOCTYPE html>
<head profile="http://gmpg.org/xfn/11">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Fuzzy</title>
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="js/jquery.gvChart-1.1.min.js"></script>
</head>
<body>
  <span class="globeworld">&shy;</span>
  <div id="container">

	<header id="header-wrap">
	<section id="header" class="row">
		<div id="header-left" class="six columns">
			<h1 class="title"><a href="./"> pemilihan bank</a></h1>
      <h2 class="desc">Sistem Pendukung Keputusan Untuk Kegiatan Investasi</h2>
		</div>
		<aside id="header-right" class="six columns">
			<?php //get_search_form(); ?>
		</aside>
	</section>
	</header>

	<nav id="nav-wrap">
	  <div id="navi" class="row" role="navigation">
		  <a class="togglenav" href="#" onclick="$('.menu').slideToggle('slow'); return false;">MENU</a>
      <ul class="menu">
        <li><a href = "./">HOME</a></li>
        <?php /* <li><a href = "#./">USER</a>
            <ul class="submenu"> */ ?>
              <li><a href ="./tabungan.php">TABUNGAN</a></li>
              <li><a href ="#./deposito.php">DEPOSITO</a></li>
              <li><a href ="#./giro.php">GIRO</a></li>
            <?php /*</ul>
        </li>*/ ?>
        <li><a href = "#./bukutamu.php">BUKU TAMU</a></li>
      </ul>
	  </div>
	</nav>

	<section id="content" itemprop='mainContentOfPage'>
	  <div class="row">