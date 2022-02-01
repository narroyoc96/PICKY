/*
 * Quinto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (26/10/17)
 */

/*
 * Nombre del programa
 */
 program saludo;


/* Funcion que indica el momento del dia */

  procedure indicarMomento (momento: char)
   
  {
   if (momento == 'm'){
       write("Buenos dias, ");
   } else if (momento == 't'){
              write("Buenas tardes, ");
   } else if (momento == 'n'){
              write("Buenas noches, ");
   }
  }

  procedure mostrarGenero (genero: char)
  
  {
    if (genero == 'm'){
       writeln("Senor");
   } else if (genero == 'f'){
             writeln("Senora");
   }
  }




/*
 * Programa Principal.
 */

  procedure main ()
  momento: char;
  genero: char;

   {
    write("Indique el momento del dia (manana (m), tarde (t) o noche (n)): ");
      readln(momento);

    write("Indique su genero (masculino (m) o femenino (f)): ");
       readln(genero);

    indicarMomento(momento);
    mostrarGenero(genero);
   }
