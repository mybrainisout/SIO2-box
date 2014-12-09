<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
	</head>
	<body>
		<section id='contenu'>
			<?php
				$table = "<table>";
				$i = 0;
				$j = 0;
				for ($j = 0; $j<=10; $j++) {
					$table.="<tr>";
					if ($j==0) {
						for ($i=0; $i<=10; $i++) {
							$table.='<td>'.$i.'</td>';
						}
					}
					else {
						for ($i=0; $i<=10; $i++) {
							if ($i==0) {
								$table.='<td>'.$j.'</td>';
							}
							else {
								$table.='<td>'.($i*$j).'</td>';
							}
						}
					}
					$table.="</tr>";
				}
				$table.="</table>";
			echo $table;
			?>
		</section>
		<section id='lien'>
			<?php
				$tab = null;
				$i = 0;
				$j = 0;
				for ($i = 0; $i<=10; $i++) {
					for ($j=0; $j<=10; $j++) {
						if ($i==0) {
							$tab[$i][$j] = $j;
						}
						elseif ($j==0) {
							$tab[$i][$j] = $i;
						}
						else {
							$tab[$i][$j] = $i*$j;
						}
					}
				}
				$script2 = '<table>';
				foreach ($tab as $ligne) {
					$script2 .='<tr>';
					foreach ($ligne as $cellule) {
						$script2 .='<td>'.$cellule.'</td>';
					}
					$script2.='<tr>';
				}
				$script2.='</table>';
				print ($script2);
			
			?>
		</section>
		<section>
		<h4>Menu</h4>
			<?php
				$tabmenu = array(
					array('title' => 'Accueil', 'href' => 'index.php', 'libelle' => 'Accueil'),
					array('title' => 'Liste', 'href' => 'liste.php', 'libelle' => 'Liste'),
					array('title' => 'Formulaire', 'href' => 'formulaire.php', 'libelle' => 'Formulaire')
				);
				foreach ($tabmenu as $option) {
					print ('<a href="'.$option['href'].'"title="'.$option['title'].'">'.$option['libelle'].'</a>'.'<br/>');
				}	
			?>
		</section>
		<section>
		<h4>Extras</h4>
			<?php
				$tabmenu2 = array(
					array('title' => 'Recherche', 'href' => 'recherche.php', 'libelle' => 'Recherche'),
					array('title' => 'Export', 'href' => 'export.php', 'libelle' => 'Export'),
				);
				foreach ($tabmenu2 as $option2) {
					print ('<a href="'.$option2['href'].'"title="'.$option2['title'].'">'.$option2['libelle'].'</a>'.'<br/>');
				}	
			?>
		</section>
	</body>
</html>