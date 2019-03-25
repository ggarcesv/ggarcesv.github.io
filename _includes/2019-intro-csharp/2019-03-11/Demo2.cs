using System;

public class Demo2 {
	static void Main(String[] args)
	{
		// 32 bits
		int entero1 = 10;
		int entero2 = 20;
		// 64 bits
		long enteroLargo = 100;
		int suma = entero1 + entero2;
		Console.WriteLine("{0} + {1} = {2}", entero1, entero2, suma);

		// 32 bits
		float decimal1 = (float)3.14;
		// 64 bits
		double decimalLargo = 23.256;
		double sumaDecimal = decimal1 + decimalLargo;
		Console.WriteLine("{0} + {1} = {2}", decimal1, decimalLargo, sumaDecimal);		


	}
}