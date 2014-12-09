

<?php
$idconn=mysqli_connect('localhost','root','');//paramtètres de connexion
mysqli_select_db($idconn,"freefly");	   //conexion à la base
function inscription(){			  //fonction de l'inscription 
	GLOBAL $idconn;         	  //rendre le variable globale 
	if(isset($_POST['submit'])){     //si on appuie envoyer
		$nom=$_POST['nom'];              //les variables 
		$prenom=$_POST['prenom'];
		$adresse=$_POST['adresse'];
		$cp=$_POST['cp'];
		$adresseMail=$_POST['mail'];
		$pseudo=$_POST['pseudo'];
		$mdp=$_POST['mdp'];
		$cmdp=$_POST['cmdp'];
	
	if($nom&&$prenom&&$adresseMail&&$pseudo&&$mdp&&$cmdp){  //si tous ces champs sont remplis
		if($mdp==$cmdp){    
			$mdp=md5($mdp);
		
				$reg=mysqli_query($idconn,"SELECT * FROM UTILISATEUR WHERE userName='$pseudo'");  // executer la requètte
				$rows=mysqli_num_rows($reg);
				if($rows==0){
					mysqli_query($idconn, "INSERT INTO UTILISATEUR VALUES ('','$nom','$prenom','$adresseMail','$pseudo','$mdp')");
				    print('<p style="color:green";>Bienvenue, '.$pseudo.', Vous êtes bien inscrit merci de votre confiance   
					<a href="connexion.php">Connectez vous</a></p>');
					
					
				}else print("<p style='color:red';>".$pseudo. "  est déja utilisé merci de le modifier </p>");
			
	
	
		}else print("<p style='color:red';>Les deux mots de passe doivent être identiques </p>");


	}else print("<p style='color:red';>Veuillez remmplir les shamps avec * s'il vous plait</p>");

}


}
function connexion(){   //fonction de connexion
session_start();
GLOBAL $idconn;
if (isset($_POST['submit'])){
	$pseudo=$_POST['pseudo'];
	$mdp=$_POST['mdp'];
	$mdp=md5($mdp);
	if($pseudo&&$mdp){
		$reg=mysqli_query($idconn, "SELECT * FROM UTILISATEUR WHERE userName='$pseudo'and motDePass='$mdp'");
		$rows=mysqli_num_rows($reg);
		if($rows==1){
			$_SESSION['pseudo']=$pseudo;
			header("location:fichiers.php");
			
	
		}else echo("<p style='color:red';>Pseudo ou passeword incorrects</p>");
	
	}else print("<p style='color:red';>Veillez saisir tous les champs merci</p>");
}
}
function session(){	
session_start();//Démarer une session
	         if($_SESSION['pseudo']){
					print('Bienvenue   '.$_SESSION['pseudo'].'<a href="logout.php"><img src="images/deconnexion.png" alt="Logo" ><a/>');	//deconnexion
			}else 
			header("location:accueil.php");   //envoyer ver la page d'accueil*/
}
function finSession(){
session_start();
$_SESSION['pseudo'];
session_destroy();
header("location:accueil.php");
} 
function reaction(){     

		   session_start();
           if(isset($_SESSION['pseudo'])){    
		           
		             echo ('<a style="color:white" href="fichiers.php">Mon espace</a>'); 
		   }else
		            
		             echo('<a style="color:white" href="connexion.php">Connexion</a>');  
                          
}
function reaction2(){

           if(isset($_SESSION['pseudo'])){ 
				echo('<li><a id="accueil"  href="accueil.php">Accueil</a></li>
				<li> <a href="fichiers.php">Mes Fichiers</a></li>  
				<li><a id="telecharger"  href="telecharger.php">Telecharger</a></li>
				<li><a id="abonnement"  href="abonnement.php">Abonnement</a></li>');

			}else

				echo('<li><a id="accueil"  href="accueil.php">Accueil</a></li>
					<li><a href="inscription.php">Inscription</a></li> 
					<li><a id="telecharger"  href="telecharger.php">Telecharger</a></li>
					<li><a id="abonnement"  href="abonnement.php">Abonnement</a></li>'
				);

}
function enregistrer(){
	GLOBAL $idconn;
	
	if(isset($_POST['valid'])){
		if(isset($_FILES['fichier'])&&(($_FILES['fichier']['size'])!=0)){
																	/*if(isset(!=empty($_FILES['fichier'])))
																		{/*&&(($_FILES['fichier']['size'])!=0)){*/
			$nom=$_FILES['fichier']['name'];
			
			$taille=$_FILES['fichier']['size'];
			$tmp_name=$_FILES['fichier']['tmp_name'];
			$file_dest='telecharger/'.$nom;
			$query=mysqli_query($idconn,"INSERT INTO FICHIER VALUES ('',$taille,null,'$nom')");
			
				if(move_uploaded_file($_FILES['fichier']['tmp_name'],$file_dest)){
				?>
				<script> alert("Votre fichier a été bien envoyé");</script>
				
				<?php
				
				}else
				          echo("<p style='color:red';>une echec pendant le téléchargement;reésayer  s.v.p</p>");
					
		 }else
			echo("<p style='color:red';>Veuillez selectionner un fichier s'il vous plait</p>");
		
	}

	
}
function afficher(){
GLOBAL $idconn;
$login=$_SESSION['pseudo'];


$sqlquery="SELECT*FROM  
			
				FICHIER" ;
			/*	
			INNER JOIN STOCKER ON STOCKER.id_fich=FICHIER.fich_id
			INNER JOIN EMPLACEMENT ON EMPLACEMENT.emplac_id=STOCKER.id_emplac
			INNER JOIN COMPTE ON  COMPTE.id_emplac=EMPLACEMENT.emplac_id
			INNER JOIN UTILISATEUR ON UTILISATEUR.util_id=COMPTE.id_util
			WHERE UTILISATEUR.userName='$login'";*/
			
			
			
			
			
			
			
			
$SQLResult = mysqli_query($idconn, $sqlquery);
$ligne='<table style=" margin-left:100px;">
		<tr>
		
		<td style="color:MidnightBlue;">dossier</td>
		<td style="color:MidnightBlue;">taille</td>
		<td id="suprimer" style="colorMidnightBlue";>telecharger</td></br>
		<td style="color:MidnightBlue;">supprimer</td>
		</tr>
		<tr>
		
		<td colspan="4">_________________________________________________</td>
		</tr>';
while ($SQLRow = mysqli_fetch_array($SQLResult)) {
              
	$ligne.='<tr>
				<td style="color:MidnightBlue;">'.$SQLRow['nom']."</td>
				<td style='color:MidnightBlue;'>".$SQLRow['taille'].'</td>
				<td style="text-align:center;"><a href="telechargement.php?fich_id='. $SQLRow['fich_id'].'"><img src="images/telecharger.png"></a></td>
				<td style="text-align:center;"><img src="images/suprimer.png"></td>
				
			</tr>';
			
		}
	$ligne.='</table>';
	print($ligne);
mysqli_close($idconn);

}
function telecharger(){
	GLOBAL $idconn;

	if(isset($_GET['fich_id'])){
	$id=$_GET['fich_id'];
	$sql=mysqli_query($idconn,"SELECT nom FROM FICHIER WHERE fich_id='$id'"); 
	$rows=mysqli_num_rows($sql);
		if($rows==true){
			$row=mysqli_fetch_assoc($sql);
			header ("Content-description:File Transfer");
			header ("Content-type:application/octet-stream");
			header("Content-Disposition:attachment;filename=".$row['nom']);
			heaader ("Content-length".filesize("FICHIER/".$row['nom']));
			ob_clean();
			readfile("FICHIER/".$row['nom']);
	
		}else 
				echo "ce fichier n 'existe pas";
	}

}
?>
