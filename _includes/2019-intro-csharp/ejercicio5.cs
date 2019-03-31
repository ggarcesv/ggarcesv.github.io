// Calcula la sumatoria números flotantes ingresados en la línea de comandos. 
// Ejercicio Hans

using System;

public class ejer5{
    static void Main(String[] args){

        double resultado = 0;
        int cant = args.Length;
        double num;

        for(int i = 0 ;i < cant ; ++i){
            num = double.Parse(args[i]);
            resultado = resultado + num;
        }
        Console.WriteLine(resultado);
    }
}


/*Echo de otra manera.
using System;

public class ejer5{
    static void Main(String[] args){

    	double resultado = 0;
    	double num;

    	for(int i = 0 ;i < args.Length ; ++i){
    		num = double.Parse(args[i]);
    		resultado = resultado + num;
    	}
    	Console.WriteLine(resultado);
    }
}*/           