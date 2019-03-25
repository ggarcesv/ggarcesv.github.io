using System;

public class DemoParametros3 {
	static void Main(String[] args) {
		String operacion = args[1];
		int n1 = Int32.Parse(args[0]);
		int n2 = Int32.Parse(args[2]);
		int resultado = 0;

		switch(operacion)
		{
			case "+":
				resultado = n1 + n2;
				break;
			case "-":
				resultado = n1 - n2;
				break;
			case "*":
				resultado = n1 * n2;
				break;
		}
		Console.WriteLine(resultado);
	}
}