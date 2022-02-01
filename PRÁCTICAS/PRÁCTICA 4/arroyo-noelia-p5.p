/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (05/10/17)
 */


/*
 * Nombre del programa
 */
 program letras;



/*
 * Funciones y procedimientos.
 */
  function mostrarLetras(lt: char): int
   {
    return int(lt);
   }

  function intercambiarLetras(z: int): char
   {
    return char(z);
   }

  function sumarLetras(pm: int): int
   {
    while(pm < mostrarLetras('N'))
     {
      writeln(intercambiarLetras(pm));
       pm = pm + 1;
      }
    return pm;
   }
  

/*
 * Programa Principal.
 */
 procedure main ()


  inicio: int;
  fin: int;

 {
   inicio = mostrarLetras('A');
   fin = mostrarLetras('A');
   writeln("Entre dichas letras estan: ");
   writeln(intercambiarLetras(sumarLetras(inicio)));
 }
