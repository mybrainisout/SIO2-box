<?php
include"php/script2.php";
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet"  href="style.css" type="text/css" />
		<title>FreeFly - Mes fichiers</title>
		<script type="text/javascript"></script>
		
	</head>
	
	<body>
		
		<div id="bandeau" >
			<h2>FreeFly   
			<br /> Transferer vos fichier sans probleme !</h2> 
			<p id="bienvenue1">
			
			
			<?php
				session();
				
			?>
				</p>
							
							</div>
		
		<div id="logo">
				<img src="images/logo.png" alt="Logo" width="150px" height="80px" >
		</div>
		
		<div id="menu">
		<h2>Menu</h2>
			<ul>
				
				
				<?php  reaction2(); ?>
				
				
			</ul>
		</div>
		
		
		<article>
				<form action="fichiers.php" method="post" enctype="multipart/form-data">
				<br/>Dossier:<input type='file'  name='fichier' /><br/><br/>                <!--webkitdirectory -->
				<input type="submit" name="valid" value="importer" />
				
				<?php enregistrer();
				echo '<p  style="margin-left:100px;margin-top:50px;">MES FICHIERS :</p>';
				afficher();
				?>
				</form>
			
			
			
		   

					<fieldset>
						<legend>Vos remarques</legend>
							<label for="ameliorer">Comment pensez-vous que je puisse ameliorer mon site ?</label>
							<textarea name="ameliorer" id="ameliorer" rows="2" cols="50" placeholder="Ameliorer le 			site ?!"></textarea>
					</fieldset>
			
		</article>
		
			       
		<!--<input class="envoi" type="submit" value="Envoyer" name="submit"/>
					<input class="annul" type="reset" value="Annuler" name="reset" />-->
					
		

		
		<div id="piedpage">
			
			<p>
			Copyright : toute se qu'il faut savoir, vous le savez déjà. Pour résumer : plagier mon site et je vous poursuis !!!!
			</p>
			
		</div>
		
	</body>
</html>
		
