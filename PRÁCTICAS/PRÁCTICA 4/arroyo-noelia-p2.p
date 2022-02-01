/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (29/09/17)
 */

/*
 * Nombre del programa
 */
 program posicion87;

/*
 * Constantes
 */
 consts:

 C = 87;

/*
 * Funciones y procedimientos.
 */

 function ponerCifra (C:int):char
 {
 write ("La posicion de 87 es: ");
 return char (87);
 }

/*
 * Programa Principal.
 */
 procedure main ()



 {
   writeln (ponerCifra(C));
 }
