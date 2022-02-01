/*
 * Cuarto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (09/10/17)
 */

/*
 * Nombre del programa
 */
 program juego;


/*
 * Constantes
 */
 consts:
 
 CARTA = 4;
 
   

/*
 * Funcion que muestra la carta de la baraja en el juego de las siete y media.
 */

 function mostrarNumeroCarta(CARTA: int): float

 {
  switch(CARTA){
   case 1:
    write ("El valor de la carta es: ");
    return 1.0;

   case 2:
    write ("El valor de la carta es: ");
    return 2.0;

   case 3:
    write ("El valor de la carta es: ");
    return 3.0;

   case 4:
    write ("El valor de la carta es: ");
    return 4.0;

   case 5:
    write ("El valor de la carta es: ");
    return 5.0;

   case 6:
    write ("El valor de la carta es: ");
    return 6.0;

   case 7:
    write ("El valor de la carta es: ");
    return 7.0;
   case 8:
    write ("El valor de la carta es: ");
    return 0.5;

   case 9:
    write ("El valor de la carta es: ");
    return 0.5;

   case 10:
    write ("El valor de la carta es: ");
    return 0.5;

   default:
    write ("El valor de la carta es: ");
    return 0.0;
   }
 }


/*
 * Programa Principal.
 */

  procedure main ()

  {
   writeln(mostrarNumeroCarta(CARTA));
  }
