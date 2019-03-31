// Dada una lista de número enteros ingresada en la línea de comandos, se pide que 
// muestres la cantidad de número pares e impares.
// Ejercicio Hans

using System;

public class ejer3{
	static void Main (String[] args){

		int cantidad = args.Length;
		int contador1 = 0;
		int contador2 = 0;
		
		for(int i = 0 ; i < cantidad; i++){
			int numero = Int32.Parse(args[i]);

			Console.WriteLine("Elementos {0}: {1}",i,args[i]);

			if (numero%2 == 0){
				contador1++;
			}else{
				contador2++;
			}
		}		
	    Console.WriteLine("la cantidad de numeros Pares son: {0} ",contador1);
	    Console.WriteLine("la cantidad de numeros Impares son: {0} ",contador2);
	}
}