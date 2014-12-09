package org.avalone.TPSIO;

public class Factorielle {
	/**
	 * Classe permettant de calculer la fonction Factorielle
	 * Deux implémentations, une sans récursivité, l'autre avec récursivité 
	 */

	public static long Factorielle1(int val){
		/**
		 * Calcul de Factorielle sans récursivité
		 * Le cumul se fait en partant de 1 jusqu'à la valeur désirée
		 * 
		 * @param	val	Valeur pour laquelle on cherche à calculer la factorielle
		 * @return		Valeur de la factorielle de la valeur fournie
		 */
		
		long res = 1l;
		for (long i = 1; i <= val; i++){
			res *= i;
		}
		return res;
	}
	
	public static long Factorielle2(int val){
		/**
		 * Calcul de Factorielle sans récursivité
		 * Le cumul se fait epar les appels récursifs de la fonction
		 * Le plancher de récursivité est fixé à 1 
		 * 
		 * @param	val	Valeur pour laquelle on cherche à calculer la factorielle
		 * @return		Valeur de la factorielle de la valeur fournie
		 */
		
		long res = 0l;
		
		if (val <= 1){
			res = 1l;
		}else{
			res = Factorielle2(val - 1) * val;
		}
		return res;
	}
	
	public static void main(String[] args) throws InterruptedException{
		Chronometre monChrono = new Chronometre();
		int val = 49; 
		/*
		 * Attention : au delà de 49, la fonction ne peut plus calculer car le type long est limité à 8 octets
		 * soit entre -9223372036854775808 et  +9223372036854775807
		 * or fact(49) = 						8789267254022766592
		 */
		
		
		System.out.println("========= VERSION 1 ========");
		monChrono.startChrono();
		long res1 = Factorielle1(val);
		monChrono.stopChrono();
		monChrono.printMilliSec();
		System.out.println("Le résultat : " + res1 + " calculé en " + monChrono.getMilliSec() + " ms");
		
		System.out.println("\n========= VERSION 2 ========");
		monChrono.startChrono();
		long res2 = Factorielle2(val);
		monChrono.stopChrono();
		monChrono.printMilliSec();
		System.out.println("Le résultat : " + res2 + " calculé en " + monChrono.getMilliSec() + " ms");
	}
}
