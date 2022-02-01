/*
 * Quinto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (26/10/17)
 */

/*
 * Nombre del programa
 */
 program cartas;


/*
 * Funcion que permite leer un valor por teclado y mostrar la figura
*/
  
  procedure verValor(v1: char, v2: char, v3: char)
  {
   if (char(48) <= v1 and v1 <= char(52) and char(48) <= v2 and   v2 <= char (57) and (v3 == Eol)){
       writeln("El valor dado pertenece a la baraja");
    } else {
      writeln("Introduzca un numero valido de la baraja");
    }
   }

  procedure mostrarFigura(v1: char, v2: char, v3: char)
  {
    if (v1 == char(56)){
     writeln("SOTA");
    } else if (v1 == char(57)){
       writeln("CABALLO");
    } else if (v1 == char(49) and v2 == char(48)){
       writeln("REY");
    }
  }
/*
 * Programa Principal.
 */

  procedure main ()
   v1: char;
   v2: char;
   v3: char;
 
  {
   write("Introduzca un numero (EJEMPLO 04 = valor 4): ");
   read(v1);
   read(v2);
   read(v3);
   verValor(v1, v2, v3);
   mostrarFigura(v1, v2, v3);
  }


  
