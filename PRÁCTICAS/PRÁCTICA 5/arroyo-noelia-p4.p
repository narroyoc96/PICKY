/*
 * Cuarto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (09/10/17)
 */

/*
 * Nombre del programa
 */
 program signo;


/*
 * Constantes
 */
 consts:

 MES = 4;
 DIA = 11;


/*
 * Funcion que muestra el signo del zodiaco segun la fecha de nacimiento.
*/

 function determinarSigno(MES: int , DIA: int): int


 {
  
  if((MES == 3 and DIA <= 21) or (MES == 4 and DIA <= 20))
    { return 1;


  } else if((MES == 4 and DIA <= 21) or (MES == 5 and DIA <= 21))
    { return 2;


  } else if((MES == 5 and DIA <= 22) or (MES == 6 and DIA <= 21))
    { return 3;


  } else if((MES == 6 and DIA <= 22) or (MES == 7 and DIA <= 23))
    { return 4;


  } else if((MES == 7 and DIA <= 24) or (MES == 8 and DIA <= 23))
    { return 5;

      
  } else if((MES == 8 and DIA <= 24) or (MES == 9 and DIA <= 23))
    { return 6;

     
  } else if((MES == 9 and DIA <= 24) or (MES == 10 and DIA <= 23))
    { return 7;

      
  } else if((MES == 10 and DIA <= 24) or (MES == 11 and DIA <= 22))
    { return 8;

    
  } else if((MES == 11 and DIA <= 23) or (MES == 12 and DIA <= 21))
    { return 9;

    
  } else if((MES == 12 and DIA <= 22) or (MES == 1 and DIA <= 20))
    { return 10;


  } else if((MES == 1 and DIA <= 21) or (MES == 2 and DIA <= 19))
    { return 11;

      
  } else if((MES == 2 and DIA <= 20) or (MES == 3 and DIA <= 20))
    { return 12;

    
  } else
    { return 25;
  }
 
}

  procedure mostrarSigno (valor: int)

  {


  switch (valor){

   case 1:
    writeln("El signo del zodiaco es ARIES");
   

   case 2:
    writeln("El signo del zodiaco es TAURO");
  

   case 3:
    writeln("El signo del zodiaco es GEMINIS");
  

   case 4:
    writeln("El signo del zodiaco es CANCER");
  

   case 5:
    writeln("El signo del zodiaco es LEO");
 

   case 6:
    writeln("El signo del zodiaco es VIRGO");
  

   case 7:
    writeln("El signo del zodiaco es LIBRA");
   

   case 8:
    writeln("El signo del zodiaco es ESCORPIO");
  

   case 9:
    writeln("El signo del zodiaco es SAGITARIO");
 

   case 10:
    writeln("El signo del zodiaco es CAPRICORNIO");
   

   case 11:
    writeln("El signo del zodiaco es ACUARIO");
   

   case 12:
    writeln("El signo del zodiaco es PISCIS");
  }

  
 }

/*
 * Programa Principal.
 */

  procedure main ()
  
  valor:int;


  {

  valor = determinarSigno(MES,DIA);

  mostrarSigno (valor);

  }

