/* Dada una lista de número enteros ingresada en la línea de comandos, se pide que calcules y muestres su promedio. 
El programa debe validar que la cantidad de parámetros sea la adecuada (mínimo dos números). */

// Versión docente
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

/* Versión Hans

using System;

public class ejer1{

	static void Main(String[] args ){
		
         if (args.Length >= 2){
         	int suma = 0;
		    double prom = 0 ;

       for (int i = 0 ; i < args.Length; ++i){
       		int num = Int32.Parse(args[i]);
       		suma = suma + num;	

       }
       prom = suma / args.Length;
       Console.WriteLine(prom); 

         }else{       
		Console.WriteLine("ingrese dos o mas digitos");
		}
		

	}
} */