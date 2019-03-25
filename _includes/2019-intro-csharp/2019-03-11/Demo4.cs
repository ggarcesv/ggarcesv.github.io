using System;

public class Demo4 {
	static void Main(String[] args) {
		String str1 = "Hello";
		String str2 = str1 + " World";
		String str3 = "Hola";
		String str4 = String.Concat(str3, " Mundo");
		Console.WriteLine(str2);
		Console.WriteLine(str4);
	}
}