using System;

public class Demo3 {
	static void Main(String[] args)
	{
		for(int i = 0; i < 10; ++i) {
			Console.WriteLine(i);
		}
		Console.WriteLine("----");
		int j = 0;
		while(++j < 10) {
			Console.WriteLine(j);
		}

		bool verdadero = true;
		// if(verdadero == true) {
		if(verdadero) {
			Console.WriteLine("Siempre verdadero");
		}

		verdadero = false;
		if(!verdadero) {
			Console.WriteLine("Siempre falso");
		}
	}
}