/*  Escribe una función que calcule el valor de una potencia, donde la base y el exponente son números
enteros ingresados en la línea de comandos. */

public class Ejercicio8{
    static void Main(String[] args){
        //int p = Potencia(2,3);
		int n1 = Int32.Parse(args[0]);
		int n2 = Int32.Parse(args[1]);
    }
    static int Potencia (int labase, int exponente){

        for(i=0;i<exponente;i++){
            if(i=0){int total=labase}
            else total= total*labase;
        }
        Console.WriteLine(total);
    }
}