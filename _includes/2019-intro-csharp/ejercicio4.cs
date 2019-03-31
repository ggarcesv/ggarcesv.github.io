// Calcula el factorial de un número entero ingresado en la línea de comandos. 
// Valida que sólo un único parámetro. 

using System;

public class ejer4{
    static void Main(String[] args){

        int factorial = Int32.Parse(args [0]);

        int suma = 1;
       
        for(int i = 1; i <= factorial; ++i){
            suma = suma * i;
        }  
        Console.WriteLine(suma);
    }
}        