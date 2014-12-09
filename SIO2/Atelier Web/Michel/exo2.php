<?php
	$tabPythagore = null;
	
	for ($i = 0; $i <= 10; $i++){
		for ($j = 0; $j <= 10; $j++){
			if ($i == 0){
				$tabPythagore[$i][$j] = $j;
			}elseif ($j == 0){
				$tabPythagore[$i][$j] = $i;
			}else{
				$tabPythagore[$i][$j] = $i * $j;
			}
		}
	}
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
				<nav class="menu leftmenu">
					<header>
						Menu
					</header>
					<a href="index.php" title="Accueil">Accueil</a>
					<a href="liste.php" title="Liste">Liste</a>
					<a href="formulaire.php" title="Formulaire">Formulaire</a>				
				</nav>
			</section>
			<section id="content">
				<article class="left">
					<h1>Générer la table de pythagore</h1>
					<code>
						<?php
							highlight_file('exo1.php');
						?>
					</code>
					<?php
						$script1 = '<table>';
						for ($i = 0; $i <= 10; $i++){
							$script1 .= '<tr>';
							for ($j = 0; $j <= 10; $j++){
								if ($i == 0){
									$script1 .= '<td>'.$j.'</td>';
								}elseif ($j == 0){
									$script1 .= '<td>'.$i.'</td>';
								}else{
									$script1 .= '<td>'.($i * $j).'</td>';
								}
							}
							$script1 .= '</tr>';
						}
						$script1 .= '</table>';
						print ($script1);
					?>					
				</article>
				<article class="right">
					<h1>Générer la table de pythagore en utilisant un tableau PHP</h1>
					<code>
						<?php
							highlight_file('exo2.php');
						?>
					</code>
					<?php
						$script2 = '<table>';
						foreach ($tabPythagore as $ligne) {
							$script2 .= '<tr>';
							foreach ($ligne as $cellule) {
								$script2 .= '<td>'.$cellule.'</td>';
							}			
							$script2 .= '</tr>';
						}
						$script2 .= '</table>';
						print ($script2);
					?>
				</article>
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