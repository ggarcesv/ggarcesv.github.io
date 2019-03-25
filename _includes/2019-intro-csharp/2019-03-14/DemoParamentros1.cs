using System;

public class DemoParametros1 {
	static void Main(String[] args) {
		int cantidadParams = args.Length;
		Console.WriteLine("Existen {0} parametos en la consola:", cantidadParams);

		for(int i = 0; i < cantidadParams; ++i) {
			Console.WriteLine("Parametro {0} : {1}", i, args[i]);
		}
	}
}