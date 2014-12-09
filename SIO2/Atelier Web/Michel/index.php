<?php	
	include_once 'scripts/functions.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Mon site</title>
		<link href="styles/styles.css" rel="stylesheet" />
		<script type="text/javascript" src="scripts/function.js">
		</script>
	</head>
	<body>
		<header id="headerbanner">
			<section id="logo">
			</section>
			<section id="banner">
				Accueil
			</section>
		</header>
		<footer id="headerfooter">
		</footer>
		<section id="contentwrapper">
			<section id="leftmenubar">
				<?php
					print(menus('main'));
					print(menus('extras'));
				?>
			</section>
			<section id="content">
			</section>
		</section>
		<footer id="pagefooter">
			<span id="footertext">
				Copyrights &copy; devatom.net - 2014
			</span>
			<nav id="social_links">
				<a href="javascript:loadProfile('F');" title="Follow us !"><img src="images/icons/facebook.png" alt="Facebook" /></a>
				<a href="javascript:loadProfile('G');" title="Follow us !"><img src="images/icons/googleplus.png" alt="Google+" /></a>
				<a href="javascript:loadProfile('T');" title="Follow us !"><img src="images/icons/twitter.png" alt="Twitter" /></a>
			</nav>
		</footer>
	</body>
</html>