import java.util.Random;
import java.util.Scanner;



public class Exo4 {
	static char recommencer = 'o';
	
	public static void main(String[] args) {
		// TODO
		while (recommencer == 'o' || recommencer == 'O'){
			int nbressai = 0;
			int proposition = 0;
			//int nbraDeviner = Random.randint(1,100);
			int nbraDeviner = (int) (Math.random() * 100 );
			while(proposition != nbraDeviner && nbressai < 10){
				Scanner propo = new Scanner(System.in);
				System.out.println("Saisissez une proposition");
				proposition = propo.nextInt();
				nbressai = nbressai + 1;
				if (proposition<nbraDeviner){
					System.out.println("C'est plus");
				}else if(nbraDeviner < proposition){
					System.out.println("C'est moins");
				}else{
					System.out.println("Trouver en"+ nbressai+ "essai");
				}
				
			}
			if (nbressai == 10){
				System.out.println("Temps dépassé");
			}
			Scanner recommencer2 = new Scanner(System.in);
			System.out.println("Voulez-vous recommencer ? o/n");
			recommencer = recommencer2.next().charAt(0);
		}
		
	}

	private static Object nextInt() {
		// TODO Stub de la méthode généré automatiquement
		return null;
	}

}
