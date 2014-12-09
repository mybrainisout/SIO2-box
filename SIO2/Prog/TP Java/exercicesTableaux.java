package org.avalone.tableaux;
public class exercicesTableaux {
	/**
	 * Classe contenant les exercices de manipulation des variables
	 * 
	 * @author michel
	 */
	
	private void quiestleplusgrand(){
		/**
		 *  1 - Qui est le plus grand
		 */
		int var1, var2;
		var1 = 32;
		var2 = 18;
		if (var1 > var2){
			System.out.println("var1 est supérieure à var2 !");
		}else if (var2 > var1) {
			System.out.println("var2 est supérieure à var1 !");
		}else{
			System.out.println("Les deux variables sont égales !");
		}		
	}
	
	private static int[] chiffresPairs(){
		/**
		 * 2 - Programme qui construit un tableau qui contient les 30 premiers nombres premiers
		 */
		int nbNombresATrouver = 30, indice = 0, valeur = 0;
		int pairs[] = new int[nbNombresATrouver];
		while (indice < pairs.length){
			if (valeur%2 == 0){
				pairs[indice] = valeur;
				indice++;
			}
			valeur++;
		}
		return pairs;
	}
	
	private static int[] chiffrespairsaucarre(){
		/**
		 * 3 - Tableau des carrés du tableau précédent
		 */
		int tabCarres[] = new int[chiffresPairs().length];
		int indice = 0;
		for (int val : chiffresPairs()){
			tabCarres[indice] = (int) Math.pow(val, 2d);
			indice++;
		}
		return tabCarres;
	}
	
	private static int nbValSuperieurs(int valToCompare){
		/**
		 * 4 - Nombres de valeurs supérieures en commençant par le début du tableau
		 */
		int tabCarres[] = chiffrespairsaucarre();
		int nbVals = 0, indice = 0;
		
		while (tabCarres[indice] < valToCompare){
			indice++;
		}
		
		nbVals = tabCarres.length - indice;
		
		return nbVals;
	}
	
	private static int nbValSuperieursInverse(int valToCompare){
		/**
		 * 4 - Nombres de valeurs supérieures en commançant par la fin du tableau
		 */
		int tabCarres[] = chiffrespairsaucarre();
		int nbVals = 0, indice = tabCarres.length - 1;
		
		while (tabCarres[indice] > valToCompare){
			indice--;
			nbVals++;
		}
		
		nbVals = tabCarres.length - (indice + 1);
		
		return nbVals;
	}
	
	private static int[] tableauTrie(int[] tab){
		/**
		 * 5 - Trie de tableau par le tri à bulles
		 */
		int tabTrie[] = tab;
		int tampon = 0;
		boolean echange = true;
		while (echange){
			echange = false;
			for (int i = 0; i < tabTrie.length - 1; i++){
				if (tabTrie[i] > tabTrie[i + 1]){
					tampon = tabTrie[i + 1];
					tabTrie[i + 1] = tabTrie[i];
					tabTrie[i] = tampon;
					echange = true;
				}
			}
		}
		return tabTrie;
	}
	
	public static void main(String[] args) {
		/*
		int b = 3100;
		System.out.println(nbValSuperieurs(b) + " valeurs sont supérieures à " + b);
		System.out.println(nbValSuperieursInverse(b) + " valeurs sont supérieures à " + b);
		*/
		int tabNonTrie[] = {12, 1, 2, 13, 34, 48, 17, 32, 34, 72};
		afficheTableau(tabNonTrie);
		afficheTableau(tableauTrie(tabNonTrie));
	}

	private static void afficheTableau(int[] tab){
		/**
		 * Affichage textuel d'un tableau
		 * 
		 * @param	tab	Tableau à afficher
		 */
		String chaine = new String();
		for (int val : tab){
			chaine += val + "|";
		}
		System.out.println(chaine.substring(0, chaine.length() - 1));
	}
}
