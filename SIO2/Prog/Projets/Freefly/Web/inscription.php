<?php
include"php/script2.php";
?>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet"  href="style.css" type="text/css" />
		<title>FreeFly - Inscription</title>
		
	</head>
	
	<body>
		
		<div id="bandeau" >
			<h2>FreeFly     <br />
			                     Transferer vos fichiers sans probleme !</h2><p id="bienvenue1">
								 <a style="color:white" href="connexion.php">Connexion</a></p>
		</div>
		
		<div id="logo">
				<img src="images/logo.png" alt="Logo" width="150px" height="80px" >
		</div>
	
		<article>
			<h1 class="slgn">Inscription</h1>
			<form   method="post" action="inscription.php">
					<p>Pour beneficier de nos offres veuillez vous inscrire ici :</p>
					<fieldset>
						<legend>Vos coordonnees</legend>
					   <label for="nom">*Votre nom:</label></p>
						<input type="text" name="nom" id="nom" placeholder="Ex : Exemple" size="30" maxlength="10" />
						<br />
						<label for="prénom">*Votre prenom :</label>
						<input type="text" name="prenom" id="prenom" placeholder="Ex : Exemple" size="30" maxlength="10" />
						<br />
						<label for="ddn">Date de naissance :</label>
						<input type="date"  name="ddn" >
						
						
						<br />
						<label for="adresse">Votre adresse :</label>
						<input type="text" name="adresse" id="adresse" placeholder="Ex : X rue de la Vierge" size="30" maxlength="10" />
						<br />
						<label for="cp">Votre code postal :</label>
						<input type="text" name="cp" id="cp" placeholder="Ex : 33000" size="30" maxlength="10" />
						<br /><label for="adresseMail">*Adresse mail :</label>
						<input type="email" name="mail" id="mail" placeholder="Ex : exemple@exemple.com" size="30" maxlength="20" />
					</fieldset>
					<fieldset>
					<legend>Vos identifiants</legend>
						 <label for="pseudo">*Votre pseudo :</label>
						<input type="text" name="pseudo" id="pseudo" placeholder="Exemple"/>
						<br />
						<label for="mdp">*Votre mot de passe :</label>
						<input type="password" name="mdp" id="mdo" placeholder="******"/>
						<br />
						<label for="cmdp">*Confirmation du mot de passe :</label>
						<input type="password" name="cmdp" id="mdo" placeholder="******"/>
					</fieldset>
						<br />
						<br />
					
					<input class="envoi" type="submit" value="Envoyer" name="submit"/>
					<input class="annul" type="reset" value="Annuler" name="reset" />
					<?php
					inscription();
					?>
			</form>
		</article>
		
		<div id="menu">
		<h2>Menu</h2>
			<ul >
				<li><a  href="accueil.php">Accueil</a></li>
				<li><a href="inscription.php">Inscription</a></li>
				<li><a href="telecharger.php">Telecharger</a></li>
				<li><a href="abonnement.php">Abonnement</a></li>
			</ul>
		</div>
	   </form>	

		
		<div id="piedpage">
			
			<p>
			Copyright : tous ce qu'il faut savoir, vous le savez déjà. Pour résumer : plagier mon site et je vous poursuis !!!!
			</p>
			
		</div>
		
	</body>
</html>
		
