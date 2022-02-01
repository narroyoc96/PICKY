/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (05/10/17)
 */

/*
 * Nombre del programa
 */
 program paroimpar;


/*
 * Constantes
 */
 consts:
 
 F = 2;






/*
 * Funciones y procedimientos.
 */
 

 function calcularParImpar(cifra:int): int

 {
  if (cifra % 2 ==0)
  {
   write("La cifra dada es par: ");
  }
  else
  {
   write("La cifra dada es impar: ");
  }
  return cifra;
 }



/*
 * Programa Principal.
 */
 procedure main ()
 cifra: int;


 {
 cifra = 13;
 writeln(calcularParImpar(cifra));
 }

