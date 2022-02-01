/*
 * Sexto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (2/11/17)
 */

/*
 * Nombre del programa
 */
 program cajero;

/*
 * Constantes
*/

consts:

  saldo = 26892.0;

/*
 * Funcion que permite ingresar dinero.
*/
  
 
  function ingresarDinero(saldo: float): float 
  ingreso: float;
  
  {
     write("Introduzca la cantidad que desea ingresar: ");
     read(ingreso);

     saldo = saldo + ingreso;
     write("El saldo final disponible es: ");
     return saldo;
  }

/*
 * Funcion que permite retirar dinero.
*/


   function retirarDinero(saldo: float): float
   retirar: float;
  
   {
      write("Introduzca el importe que desea retirar: ");
             read(retirar);

      if(retirar > saldo){
         write("Usted no dispone de ese importe en su cuenta");
         write("Su saldo disponible es: ");
         return saldo;
      }else{ 
          saldo = saldo - retirar;
          write("El saldo final disponible es: ");
          return saldo;
      }
   
   }
       


/*
 * Funcion que permite consultar el dinero disponible.
*/


   function consultarDinero(saldo: float): float
  
   
   {
      write("Su saldo actual es de: ");
      return saldo;
   }

   



   procedure mirarOpcion(opcion: char)
   
   { 
      if(opcion == char(49)){
         writeln(consultarDinero(saldo));

      }else if(opcion == char(50)){
         writeln(retirarDinero(saldo));

      }else if(opcion == char(51)){
         writeln(ingresarDinero(saldo));  

      }else if(opcion == char(48)){
         writeln("Usted ha introducido la opcion salir, pase un buen dia");   
 
      }else{
         writeln ("La opcion introducida no es valida");
      }
   
   }   

  
/*
 * Programa Principal.
 */

  procedure main ()
  opcion: char;

  {
   writeln(" =========================================== ");
   writeln("|                                           |");
   writeln("|  BIENVENIDO AL CAJERO DE NOELIA ARROYO    |");
   writeln("|                                           |");
   writeln(" =========================================== ");
   writeln("|                                           |");
   writeln("|   ELIJA UNA DE LAS SIGUIENTES OPCIONES:   |");
   writeln("|                                           |");
   writeln("|  1   --->    CONSULTAR DINERO             |");
   writeln("|                                           |");
   writeln("|  2   --->    RETIRAR DINERO               |");
   writeln("|                                           |");
   writeln("|  3   --->    INGRESAR DINERO              |"); 
   writeln("|                                           |");
   writeln(" =========================================== ");
   writeln("|                                           |");
   writeln("|  0   --->     SALIR                       |");
   writeln("|                                           |");
   writeln(" =========================================== ");
   writeln(" Introduzca la opcion que desee              ");
   read(opcion);



   mirarOpcion(opcion);
  }  

 
