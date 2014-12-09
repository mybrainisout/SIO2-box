<?php	
	include_once 'scripts/functions.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Mon site</title>
		<link href="styles/styles.css" rel="stylesheet" />
		<link href="styles/styles_table.css" rel="stylesheet" />
		<script type="text/javascript" src="scripts/function.js">
		</script>
	</head>
	<body>
		<header id="headerbanner">
			<section id="logo">
				
			</section>
			<section id="banner">
				Liste
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
				<?php
					$script = '<div id="contenttable"><table id="tabPersonnes" class="listing">';
					$script .= '<tr name="entete"><th></th><th class="thid">Id</th><th style="width: 250px">Nom</th><th style="width: 250px">Prénom</th><th colspan="3" style="width: 120px">Actions</th></tr>';
					//foreach (getListePersonnesFromXML() AS $etudiant){
					foreach (getListePersonnesFromTableau() AS $etudiant){
						$id = $etudiant['id'];
						$nom = $etudiant['nom'];
						$prenom = $etudiant['prenom'];
						$nomcomplet = $nom.' '.$prenom;
						$script .= '<tr onmouseover="viewphoto(\''.$etudiant['photo'].'\',\''.$nomcomplet.'\'); viewarrow(this.rowIndex)" onmouseout="hidearrow(this.rowIndex)">';
						$script .= '<td class="arrow"><img src="images/icons/arrow_blue.png" alt="" /></td>';
						$script .= '<td class="tdid" id="td'.$id.'">'.$id.'</td><td>'.$nom.'</td><td>'.$prenom.'</td>';
						$script .= '<td class="action"><a href="liste.php?id='.$id.'" title="Supprimer"><img src="images/icons/delete_blue.png" alt="Supprimer" /></a></td>';
						$script .= '<td class="action"><a href="formulaire.php?id='.$id.'" title="Modifier"><img src="images/icons/edit_blue.png" alt="Modifier" /></a></td>';
						$script .= '<td class="action"><a href="mail.php?id='.$id.'" title="Mail"><img src="images/icons/email_blue.png" alt="Mail" /></a></td>';
						$script .= '</tr>';						
					}
					$script .= '</table></div>';
					print ($script);
				?>
				<aside id="photo">
					<img id="imgphoto" src="images/photos/unknown.png" alt="Photo" />
				</aside>
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
