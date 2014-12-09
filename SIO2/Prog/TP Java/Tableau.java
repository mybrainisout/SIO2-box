package org.avalone.TPSIO;

import java.util.Random;

public class Tableau {
	/**
	 * Introduction de la notion de classe par la manipulation d'un tableau
	 */
	
	private int[] tableau;
	
	public Tableau(){
		//int[] tabInit = {17, 32, 13, 7, 6, 47, 52, 17, 18, 74, 25, 50, 85, 91, 10, 11, 25, 56, 84, 9, 654, 31, 64, 64, 231, 64, 23, 864, 54, 64 ,31 ,864, 64, 864, 6851, 213, 64 ,213 ,86 ,311 ,86, 312, 48, 986, 54, 98, 35, 321, 6554, 54, 684, 321, 15, 486, 456};
		
		int taille = new Random().nextInt(10000);
		int[] tabInit = new int[taille];
		
		int test = new Random().nextInt(taille * taille);
		for (int i = 0; i < taille; i++){
			test = new Random().nextInt(100000);
			tabInit[i] = test;
		}
		
		this.tableau = tabInit;
	}
	
	public int[] getTableau(){
		return this.tableau;
	}
	
	public int getLength(){
		return this.tableau.length;
	}
	
	public int[] tableauTrie(){
		int tabTrie[] = this.tableau;
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

	@Override
	public String toString(){
		String chaine = new String();
		for (int val : this.tableau){
			chaine += val + "|";
		}
		return (chaine.substring(0, chaine.length() - 1));
	}

	public static void main(String[] args) {
		
		Tableau monTableau = new Tableau(); // Utilisation de la classe Tableau
		
		System.out.println(monTableau);
		
		Chronometre monChrono = new Chronometre();
		monChrono.startChrono();
		monTableau.tableauTrie();
		monChrono.stopChrono();
		System.out.println(monTableau);
		System.out.print("Le tri du tableau de " + monTableau.getLength() + " éléments a duré " + monChrono.getMilliSec() + " ms");
	}
}
