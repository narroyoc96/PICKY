/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (29/09/17)
 */

/*
 * Leer un caracter y escribir el siguiente
 */
 program programcaracter;

/*
 * Constantes.
 */
 consts:
 
 C = 'X';



/*
 * Funciones y procedimientos.
 */

  function escribirCaracter (C:char):char
 {
  write("El caracter siguiente a C es: ");
  return succ(C);
  }


/*
 * Programa Principal.
 */
 procedure main ()
 
 X: char;
 
 {
  
  writeln(escribirCaracter(C));
 }
