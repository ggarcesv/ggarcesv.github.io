// Dada una lista de numeros flotantes ingresada por linea de comandos, se pide que 
// los muestres de forma ascendente.

using System;

public class ejercicio10 {
	static void Main(String[] args) {
        int cantidad = args.Length;
        double x = 0;
        double y = 0;
        if(cantidad >=2) {
            double [] arr1 = new double[cantidad];
            for(int i=0; i<cantidad;++i){
                arr1[i] = double.Parse (args [i]);
            }
            // array actual
            for(int i=0; i<cantidad;++i){
              Console.WriteLine(arr1[i]);
            }
            // burbuja
            for(int i=0; i<cantidad;i++){
            x = double.Parse (args [i])
            y = double.Parse (args [i+1])
            
                if(x>y){
                    a[j]
                }
            }



            // array ordenado
            for(int i=0; i<cantidad;++i){
              Console.WriteLine(arr1[i]);
            }



   
        }
    }
}

/*  

   for(int z = 1; z < num; ++z) {
      for(int v = 0; v < (num - z); ++v) {
         comparaciones++;
         if(arreglo[v] > arreglo[v+1]){
            aux = arreglo[v];
            arreglo[v] = arreglo[v + 1];
            arreglo[v + 1] = aux;
            intercambios++;
         }
      }
    }



public static void BubbleSort(int[] a) {

       for (int i = 1; i <= a.Length - 1; ++i)
            for (int j = 0; j < a.Length - i; ++j)
                if (a[j] > a[j + 1])
                    Swap(ref a[j], ref a[j + 1]);
    }

    public static void Swap(ref int x, ref int y){
        int temp = x;
        x = y;
        y = temp;
    }
    */  