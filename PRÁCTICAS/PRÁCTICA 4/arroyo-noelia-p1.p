/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (29/09/17)
 */


/*
 * Nombre del programa
 */
 program raizCuadrada;


/*
 * Constantes
 */
 consts:

 RC = 2.0;


/*
 * Funciones y procedimientos.
 */

 function realizarCuadrada(RC:float):float
 {
   write ("La raiz cuadrada de 2 es: ");
   return sqrt(2.00);
  }





/*
 * Programa Principal.
 */
 procedure main ()


 {
     writeln (realizarCuadrada(RC));
 }


