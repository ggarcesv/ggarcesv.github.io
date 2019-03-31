// Escribe una función que calcule el valor de una potencia, donde la base y el exponente 
// son números enteros ingresados en la línea de comandos.

using System;

public class ejer8{
	static void Main(String[] args){
		//int p = Potencia (2, 3);
		int p = Potencia(Int32.Parse (args [0]), Int32.Parse (args[1]));

		Console.WriteLine(p);
	}

	static int Potencia(int la_base, int exponente){

		int resul = la_base;

		for (int i = 1; i < exponente; i++){
			resul = resul * la_base;
		}
		return(resul);
	}
}