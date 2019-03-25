using System;

public class DemoParametros2 {
	static void Main(String[] args) {
		double suma = 0;
		for(int i = 0; i < args.Length; ++i) {
			double numero = Double.Parse(args[i]);
			suma = suma + numero;
		}
		Console.WriteLine(suma);
	}
}