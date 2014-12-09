package org.avalone.TPSIO;

import java.io.File;

public class Explorateur {
	/**
	 * Classe permettant de mettre en oeuvre la récursivité pour parcourir un répertoire et retourner le nombre de fichiers qu'il contient.
	 * 
	 */

	public static int explore(String repertoire){
		/**
		 * Fonction permettant de parcourir le contenu du répertoire fourni.
		 * Si l'élément rencontré est un répertoire, il se rappelle récursivement pour traiter le sous-répertoire.
		 * Si l'élément rencontré est un fichier, le traitement incrémente le compteur et passe à l'élément suivant.
		 * Une fois le plancher de récursivité atteint, soit qu'il n'y à plus de sous répertoire, 
		 * l'appel se termine et renvoie le compteur à l'appel précédent.
		 * 
		 * @param	repertoire	chemin du répertoire à scanner
		 * @return				Nombre de fichiers contenus dans le répertoire
		 */
		File dir = new File(repertoire);
		int cpt = 0;
		if (dir.exists()){
			File[] listeFic = dir.listFiles(); //Récupérer la liste des fichiers et répertoires contenus dans le répertoire
			for (File fic : listeFic){ // Pour tous les fichiers du répertoire
				if (fic.isDirectory()) { // Si l'élément est un répertoire je le parcours et j'affiche le nombre de fichiers qu'il contient
					int nbFic = explore(fic.getAbsolutePath());
					System.out.println(fic.getAbsolutePath() + " => " + nbFic + " fichiers");
				}else{
					cpt ++;
				}
			}
		}else{
			cpt = -1;
		}
		return cpt;
	}
	
	public static void explore2(String repertoire){
		/**
		 * Fonction permettant de parcourir le contenu du répertoire fourni.
		 * Si l'élément rencontré est un répertoire, il se rappelle récursivement pour traiter le sous-répertoire.
		 * Si l'élément rencontré est un fichier, le traitement incrémente le compteur et passe à l'élément suivant.
		 * Une fois le plancher de récursivité atteint, soit qu'il n'y à plus de sous répertoire, 
		 * l'appel se termine et affiche le compteur pour redonner la main à l'appel précédent.
		 * 
		 * @param	repertoire	chemin du répertoire à scanner
		 * @return
		 */
		File dir = new File(repertoire);
		int cpt = 0;
		if (dir.exists()){
			File[] listeFic = dir.listFiles(); //Récupérer la liste des fichiers et répertoires contenus dans le répertoire
			for (File fic : listeFic){ // Pour tous les fichiers du répertoire
				if (fic.isDirectory()) { // Si l'élément est un répertoire je le parcours
					explore2(fic.getAbsolutePath());
				}else{
					cpt ++;
				}
			}
		}else{
			cpt = -1;
		}
		System.out.println(repertoire + " => " + cpt + " fichiers"); //J'affiche le nombre de fichiers du répertoire en cours
	}
	
	public static void main(String[] args) {
		String root = new String("/data/repertoire1");
		Chronometre monChrono = new Chronometre();

		System.out.println("========= VERSION 1 ========\n");
		monChrono.startChrono();
		int nbFic = explore(root);
		monChrono.stopChrono();
		long firstAttempt = monChrono.getMilliSec();
		System.out.println(root + " => " + nbFic + " fichiers");

		System.out.println("\n========= VERSION 2 ========\n");
		monChrono.startChrono();
		explore2(root);
		monChrono.stopChrono();
		long secondAttempt = monChrono.getMilliSec();
		
		System.out.println("Version 1 : " + firstAttempt + " msec");
		System.out.println("Version 2 : " + secondAttempt + " msec");
		
	}
}
