using System;

public class Demo4 {
	static void Main(String[] args) {
		String str1 = "Hello";
		String str2 = str1 + " World";
		String str3 = "Hola";
		String str4 = String.Concat(str3, " Mundo");
		Console.WriteLine(str2);
		Console.WriteLine(str4);

		char letra1 = 'o';
		int indice = str1.IndexOf(letra1);
		if(indice != -1) {
			Console.WriteLine(indice);
		} else {
			Console.WriteLine("No encontrado");
		}

		bool termina = str4.EndsWith("do");
		if(termina) {
			Console.WriteLine("Si termina en do");
		}

		bool empieza = str3.StartsWith("H");
		if(empieza) {
			Console.WriteLine("Si empieza en H");
		}

		String[] partes = "Hola a todos".Split(new char[] {' '});
		for(int i = 0; i < partes.Length; ++i) {
			Console.WriteLine(partes[i]);
		}

		Console.WriteLine("hola a todos".ToUpper());
		String str5 = "HOLA A TODOS".ToLower();
		Console.WriteLine(str5);

		String str6 = "    HOLA    ";
		Console.WriteLine("Antes de TRIM: {0}", str6.Length);
		int nuevoLargo = str6.Trim().Length;
		Console.WriteLine("Despues de TRIM: {0}", nuevoLargo);

		String nuevoString = str1.Replace('l', 'W');
		Console.WriteLine(nuevoString);
		
		Console.WriteLine("Hello World".Remove(7));
	}
}