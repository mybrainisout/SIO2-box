<?php
	/*
	 * Définition des constantes globales au projet
	 */
	define('REPPHOTOS', 'images/photos/');
	
	/*
	 * Fonctions
	 */
	function geneHtmlScript($totranscript){
		$script = '';	
		if (is_array($totranscript)){
			foreach ($totranscript as $option) {
				$script .= '<a href="'.$option['href'].'" title="'.$option['title'].'">'.$option['libelle'].'</a>';
			}
			$script .= '</nav>';
		}else{
			$script .= '<nav class="menu leftmenu"><header>'.$totranscript.'</header>';
		}
		return $script;
	}
	
	function menus($menuaecrire){
		$tabMenus = null;
		$menuTitle = '';
		$script = '';
		switch ($menuaecrire){
			case 'main':{
				$menuTitle = 'Général';
				$tabMenus = array(
					array('title' => 'Accueil', 'href' => 'index.php', 'libelle' => 'Accueil'),
					array('title' => 'Liste', 'href' => 'liste.php', 'libelle' => 'Liste'),
					array('title' => 'Formulaire', 'href' => 'formulaire.php', 'libelle' => 'Formulaire')
				);	
				$script .= geneHtmlScript($menuTitle);
				$script .= geneHtmlScript($tabMenus);
				break;			
			}
			case 'extras':{
				$menuTitle = 'Extras';
				$tabMenus = array(
					array('title' => 'Rechercher', 'href' => 'recherche.php', 'libelle' => 'Recherche'),
					array('title' => 'Exporter', 'href' => 'export.php', 'libelle' => 'Export'),
				);
				$script .= geneHtmlScript($menuTitle);
				$script .= geneHtmlScript($tabMenus);			
				break;
			}
		}	
		return $script;
	}

	function getListePersonnesFromXML(){
		/**
		 * Fonction permettant de créer le tableau $etudiants à partir du fichier XML
		 */
		$xmlDoc = new DOMDocument();
		if ($xmlDoc->load('datas/personnes.xml')){
			$etudiants = null;
			$xmlElements = $xmlDoc->getElementsByTagName('pers');
			foreach ($xmlElements as $xmlLine) {
				$etudiant = array(
					'id' => $xmlLine->getAttribute('id'), 
					'nom' => $xmlLine->getAttribute('nom'), 
					'prenom' => $xmlLine->getAttribute('prenom'),
					'photo' => REPPHOTOS.$xmlLine->getAttribute('photo')
				);
				$etudiants[] = $etudiant;
			}
			return $etudiants;
		}else{
			return null;
		}
	}
	
	function getListePersonnesFromTableau(){
		/**
		 * Fonction permettant de créer le tableau $personnes
		 */
		$etudiants[] = array('id' => 1, 'nom' => 'BERNADET', 'prenom' => 'Bastien', 'photo' => REPPHOTOS.'unknown.png');
		$etudiants[] = array('id' => 2, 'nom' => 'BERTIN', 'prenom' => 'Alexandre', 'photo' => REPPHOTOS.'BERTINAlexandre.png');
		$etudiants[] = array('id' => 3, 'nom' => 'CLEMENCEAU', 'prenom' => 'Franck', 'photo' => REPPHOTOS.'CLEMENCEAUFranck.png');
		$etudiants[] = array('id' => 4, 'nom' => 'CRASBERCU', 'prenom' => 'Damien', 'photo' => REPPHOTOS.'CRASBERCUDamien.png');
		$etudiants[] = array('id' => 5, 'nom' => 'EL ACHIRI', 'prenom' => 'Benatia', 'photo' => REPPHOTOS.'ELACHIRIBenatia.png');
		$etudiants[] = array('id' => 6, 'nom' => 'FORT', 'prenom' => 'Pierre-Alexandre', 'photo' => REPPHOTOS.'FORTPierreAlexandre.png');
		$etudiants[] = array('id' => 7, 'nom' => 'GAUTHIER-LAFAYE', 'prenom' => 'Victor', 'photo' => REPPHOTOS.'GAUTHIERLAFAYEVictor.png');
		$etudiants[] = array('id' => 8, 'nom' => 'LEBARBIER', 'prenom' => 'Guillaume', 'photo' => REPPHOTOS.'LEBARBIERGuillaume.png');
		$etudiants[] = array('id' => 9, 'nom' => 'MAHE', 'prenom' => 'Gwenaël', 'photo' => REPPHOTOS.'MAHEGwenael.png');
		$etudiants[] = array('id' => 10, 'nom' => 'PAIRAULT', 'prenom' => 'Marie', 'photo' => REPPHOTOS.'PAIRAULTMarie.png');
		$etudiants[] = array('id' => 11, 'nom' => 'PAUCANT', 'prenom' => 'Nicolas', 'photo' => REPPHOTOS.'PAUCANTNicolas.png');
		$etudiants[] = array('id' => 12, 'nom' => 'WILGENBUS', 'prenom' => 'Robin', 'photo' => REPPHOTOS.'WILGENBUSRobin.png');
		$etudiants[] = array('id' => 13, 'nom' => 'XU', 'prenom' => 'Peter', 'photo' => REPPHOTOS.'XUPeter.png');
		return $etudiants;
	}
?>