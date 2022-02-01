/*
 * Cuarto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (09/10/17)
 */

/*
 * Nombre del programa
 */
 program ecuacion;


/*
 * Constantes
 */
 consts:
 
 A = 10;
 B = 20;


/*
 * Funcion que muestra las distintas soluciones que hay en dicha ecuacion de primer grado.
 */

 function realizarEcuacion (A: int , B: int): int

 {
  if (A == 0 and B == 0){
   writeln("La ecuacion tiene infinitas soluciones");
  } else if (A == 0 and B !=0){
     writeln("La ecuacion no tiene solucion");
  } else{
     writeln("La ecuacion tiene una unica solucion");
  }
  
  return (-B/A);
 
 }


/*
 * Programa Principal.
 */

  procedure main ()


 {
  writeln(realizarEcuacion (A , B));
 }
