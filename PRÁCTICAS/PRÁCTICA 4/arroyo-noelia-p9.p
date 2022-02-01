/*
 * Cuarto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (03/10/17)
 */

/*
 * Nombre del programa
 */
 program tiempo;


/*
 * Constantes
 */
 consts:

 HR = 15;
 MIN = 30;
 SG = 27;

 TIEMPO = 3600 * HR + 60 * MIN + SG;




/*
 * Funciones y procedimientos.
 */
 
 function calcularTiempo(TIEMPO:int): int

 {

 write ("El tiempo en segundos desde que comieza el dia es: ");
 return  (3600 * HR + 60 * MIN + SG);

 }

/*
 * Programa Principal.
 */
 procedure main ()

 {
  writeln(calcularTiempo(TIEMPO));
 }





