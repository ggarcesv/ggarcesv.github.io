using System;

public class ejer9{
	static void Main(String [] args){

		double x = double.Parse (args [0]);
		double resul = 0;
		double p;
		double f;

		for (int i = 0; i < 100; i++){
			p = potencia(x, i);
			f = factorial(i);
			resul = resul + (p/f); 
		}

		Console.WriteLine(resul);
	}

	static double potencia (double la_base, double expo){
		
		double resul = la_base;

		for (int i = 1; i < expo; i++){
			resul = resul * la_base;
		}

		return(resul);
	}

	static double factorial (double sum1){

        double factorial = sum1;
        double suma = 1;
       
        for(int i = 1; i <= factorial; i++){
            suma = suma * i;
        }

        return(suma);  
	}
}