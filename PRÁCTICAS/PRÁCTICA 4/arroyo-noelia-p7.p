/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (05/10/17)
 */


/*
 * Nombre del programa
 */
 program caracter;


/*
 * Constantes
 */
 consts:

 NUMERO = 73;

/*
 * Funciones y procedimientos.
 */

 function verCaracter(NUMERO: int): int

 {
   if (65 <= NUMERO and NUMERO <= 90)
    {
    writeln ("El caracter dado es letra mayuscula");

    } else if ( 97 <= NUMERO and NUMERO <= 122) 
    {writeln ("El caracter dado es letra minuscula");

    } else 
    {writeln ("El caracter no es una letra");
    }
  
  return NUMERO;
 }
 

/*
 * Programa Principal.
 */
 procedure main ()

 {
  writeln (verCaracter(NUMERO));
 }

