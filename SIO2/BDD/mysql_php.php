<?php
	$idconn = mysqli_connect('172.16.100.135', 'root', 'code');
	mysqli_select_db($idconn, 'repertoire');
	$sqlQuery = 'SELECT * FROM personnes';
	$sqlResult = mysqli_Query($idconn,$sqlQuery);
	$ligne = '<table>';
	
	while ($sqlRow = mysqli_fetch_array ($sqlResult)){
		$ligne .= '<tr><td style="border: solid 1px black;">' .$sqlRow['pers_nom'].
		'</td><td style="border: solid 1px black;">'.$sqlRow['pers_prenom'].'</td></tr>';
	}
	$ligne .= '</table>';
	print ($ligne);
?>