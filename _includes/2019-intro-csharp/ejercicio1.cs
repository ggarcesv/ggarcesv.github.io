/* Dada una lista de número enteros ingresada en la línea de comandos, se pide que calcules y muestres su promedio. 
El programa debe validar que la cantidad de parámetros sea la adecuada (mínimo dos números). */

using System;

public class ejercicio1 {
	static void Main(String[] args) {
        int cantidad = args.Length;
        if(cantidad >=2) {
            double suma = 0;
            double promedio = 0;

            for(int i=0; i<cantidad;++i){
                int numero = Int32.Parse(args[i]);
                suma = suma+numero;
            }
            promedio = suma / cantidad;
            Console.WriteLine(promedio);
        } else {
            Console.WriteLine("Insuficientes parametros");           
        }
		
	}
}
