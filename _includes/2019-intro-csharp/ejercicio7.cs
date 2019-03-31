// Escribe un programa que calcule las raíces de una ecuación de segundo grado, de acuerdo a 
// las siguientes ecuaciones: Los parámetros a, b y c son ingresados en la línea de comandos. 
// Valida cuando el discriminante, esto es, la expresión 4ac es negativa. 
// Usa el método Sqrt() de C#

// Ejercicio Hans

using System;

public class ejer7{
	static void Main(String[] args){

		double a = Double.Parse(args [0]);
		double b = Double.Parse(args [1]);
		double c = Double.Parse(args [2]);
		double x1;
		double x2;

		if(b*b-4*a*c >= 0){
			x1 = (-b + Math.Sqrt(b*b-4*a*c)/(2*a));
			x2 = (-b - Math.Sqrt(b*b-4*a*c)/(2*a));

			Console.WriteLine ("x1 = {0} y x2 = {1}",x1,x2);
		}else{
			Console.WriteLine("no se puede resolver el ejercicio");
		}
	}
}