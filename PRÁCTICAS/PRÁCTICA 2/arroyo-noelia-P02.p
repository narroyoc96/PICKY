/*
 *  Primer programa en Picky.
 *  Autor: Noelia Arroyo Castaño
 *  Fecha: fecha de implementación (19/09/17)
 */

/*
 *  arroyo-noelia-P02.p
 */

program primero;

/*
 *	Constantes
 */
consts:
  miConstante = 37;
  otraConstante = 3.0;
  tope = 67;

/*
 *  Función multiplos de 3 hasta tope 
 */

function muestraMultTres(inicio: int): int
{
  while (inicio < tope - 2) { /* Esto es un bucle */
    writeln (inicio);
    inicio = inicio + 3;
  }
  write("Ha llegado al final, con valor ");
  return inicio;
}

/*
 *  Programa Principal. Calcular valores hasta el número dado por constante.
 */
procedure main()
  varInicio: int; /* Declaración de variable */

{
  varInicio = 0; /* definición de variable de inicio del bucle */

  writeln(muestraMultTres(varInicio));
  
}
