   <?php
include "php/script2.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet"  href="style.css" type="text/css" />
		<title>FreeFly - Connexion</title>
		
	</head>
	
	<body>
		
		<div id="bandeau" >
			<h2>FreeFly  <brs />
			                     Transferer vos fichier sans probleme !</h2>
		</div>
		
		<div id="logo">
				<img src="images/logo.png" alt="Logo" width="150px" height="80px" >
		</div>
		
		<div id="menu">
		<h2>Menu</h2>
			<ul>
				<li><a  href="accueil.php">Accueil</a></li>
				<li><a href="inscription.php">Inscription</a></li>
				<li><a href="telecharger.php">Telecharger</a></li>
				<li><a href="abonnement.php">Abonnement</a></li>
			</ul>
		</div>
		
		<article>
		<form method="post" action="connexion.php">
			<fieldset>
				<legend>Connexion</legend>
						<label for="id">User name :<input type="text" name="pseudo" id="pseudo" placeholder="Ex : Exemple" size="30" maxlength="10" /></label>
						<label for="mdp">Mots de passe :<input type="password" name="mdp" id="mdp" placeholder="Exemple"/></label>
						<input class="envoi" type="submit" value="Connecter" name="submit"/>
						<br />
						<div id="forget">
						<a class="inscirption" href="inscription.php">Pas encore membre ?</a>
						<a class="forgetmdp" href="forget.php">mots de passe oublier ?</a>
						</div>
					<?php connexion();
					?>
			</fieldset>
		
		</form>
		</article>
		
	<div id="piedpage">
			
			<p>
			Copyright : toute se qu'il faut savoir, vous le savez déjà. Pour résumer : plagier mon site et je vous poursuis !!!!
			</p>
			
		</div>
		
	</body>
</html>
