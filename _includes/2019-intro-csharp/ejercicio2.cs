/*  Dada una lista de números flotantes ingresada en la línea de comandos, 
se pide que determines y muestres cuál es el menor de ellos. */

using System;

public class ejercicio2 {
	static void Main(String[] args){   
        double cantidad = args.Length;
        
        if(cantidad >=2){  
            for(int i=0; i<cantidad;++i){   
                if(i<=0){   
                    double numero=double.Parse(args[i]);
                    double menor=numero;
                }else(menor>numero);
                    double numero=double.Parse(args[i]);
                    menor=numero;
                
            } Console.WriteLine(menor);
        } else {
                Console.WriteLine("Insuficientes parametros");           
        }	
    } 	
}
