<?php
	$script1 = '<table>';
	for ($i = 0; $i <= 10; $i++){
		$script1 .= '<tr>';
		for ($j = 0; $j <= 10; $j++){
			if ($i == 0){
				$script1 .= "<td>$j</td>";
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