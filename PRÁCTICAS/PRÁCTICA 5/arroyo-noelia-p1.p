/*
 * Cuarto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (06/10/17)
 */

/*
 * Nombre del programa
 */
 program figuras;


/*
 * Constantes
 */
 consts:
 
  NUMERICA = 4;
  
   

/*
 * Funcion para indicar o comprobar si la carta es una figura
 */
 
 function indicarCarta(NUMERICA: int): bool
  
  {
   if ((8 <= NUMERICA) and (NUMERICA <= 10)) {
    return True;
   } else {
    return False;
   }
  }  

 function comprobarCarta(NUMERICA: int): int
 
  {
   if (NUMERICA < 8) {
      writeln("La carta no es una figura");
    } else if (NUMERICA == 8) { 
      writeln("La figura es un sota");
    } else if (NUMERICA == 9) { 
      writeln("La figura es un caballo");
    } else if (NUMERICA == 10) {
      writeln("La figura es un rey");
    }

     return NUMERICA;
  } 



/*
 * Programa Principal.
 */

  procedure main ()

   {
    writeln(indicarCarta(NUMERICA));
    writeln(comprobarCarta(NUMERICA));
   }
