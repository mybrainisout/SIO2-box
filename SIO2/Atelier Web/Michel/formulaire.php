<?php	
	include_once 'scripts/functions.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Mon site</title>
		<link href="styles/styles.css" rel="stylesheet" />
		<link href="styles/styles_forms.css" rel="stylesheet" />
		<script type="text/javascript" src="scripts/function.js">
		</script>
	</head>
	<body>
		<header id="headerbanner">
			<section id="logo">
				
			</section>
			<section id="banner">
				Formulaire
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
				<form id="frmpersonne" action="" method="get">
					<h2>Formulaire</h2>
					<label for="civilite">Civilité :</label>
					<select id="civilite" name="civilite">
						<option value="1">Mme.</option>
						<option value="2">Mr.</option>
					</select><br />
					<label for="txtprenom">Prénom :</label>
					<input id="txtprenom" type="text" name="txtprenom" /><br />
					<label for="txtnom">Nom :</label>
					<input id="txtnom" type="text" name="txtnom" /><br />
					<label for="txtadresse">Adresse :</label><br />
					<textarea id="txtadresse" name="txtadresse"></textarea><br />
					<label for="txtcodepostal">Code Postal :</label>
					<input id="txtcodepostal" type="text" name="txtcodepostal" /><br />
					<select name="cbville">
						<option value="1">BORDEAUX</option>
						<option value="2">MERIGNAC</option>
					</select><br />
					
				</form>
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
