/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (03/10/17)
 */


/*
 * Nombre del programa
 */
 program media;


/*
 * Constantes
 */
 consts:

 C = 3.0;
 E = 5.0;
 G = 7.0;
 K = 11.0;
 X = 4.0;
 

/*
 * Funciones y procedimientos.
 */

 function calcularMedia(C:float, E:float, G:float, K:float, X:float):float
 {
  return (C + E + G + K) / X;
 }


/*
 * Programa Principal.
 */
 procedure main ()


 {
  write ("La suma de la media de los numeros C,E,G,K es: ");
  writeln (calcularMedia(C,E,G,K,X));
 }
