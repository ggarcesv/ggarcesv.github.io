/* Dada una temperatura en grados Celsius ingresada en la línea de comandos, se pide que escribas un
método que la transforme a grados fahrenheit. Luego muestra la temperatura equivalente devuelta
por el método. La relación entre estas dos escalas de temperatura es la siguiente:
F = 1.8C + 32 */

// Ejercicio Hans

using System;

public class ejer6{
    static void Main(String[] args){

    	double grados = Double.Parse(args[0]); //este es el parametro que le entrego al (String[] args){

    	double f=0;

    	f=1.8*grados+32;

    	Console.WriteLine(f);
    }
}        