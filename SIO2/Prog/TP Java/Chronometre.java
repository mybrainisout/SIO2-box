package org.avalone.TPSIO;

public class Chronometre{
	/**
	 * Classe permettant de gérer un chronomètre
	 */
	
	long m_start = 0, m_stop = 0;
	
	public void startChrono() {
		/**
		 * Démmarrage du chronometre
		 */
		m_start = System.currentTimeMillis();
	}

	public void stopChrono(){
		/**
		 * Arrêt du chronomètre
		 */
		m_stop = System.currentTimeMillis();
	}
	
	public long getMilliSec() {
		/**
		 * Calul le temps du chronomètre
		 * @return	nombre de millisecondes écoulées
		 */
		return (m_stop - m_start);
	}
	
	public void printMilliSec() {
		/**
		 * Affichage du temps du chronomètre en millisecondes
		 */
		System.out.println("Temps d'exécution : " + getMilliSec() + " ms");
	}
	
	public static void main(String[] args) throws InterruptedException {
		Chronometre monChrono = new Chronometre();
		monChrono.startChrono();
		Thread.sleep(1000);
		monChrono.stopChrono();
		monChrono.printMilliSec();
	}
}
