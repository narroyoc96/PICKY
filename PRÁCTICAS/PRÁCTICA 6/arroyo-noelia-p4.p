/*
 * Quinto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (26/10/17)
 */

/*
 * Nombre del programa
 */
 program paroimpar;


/* Funcion que permite saber si el numero es par o impar */

 procedure obtenerNumeros(n1: int, n2: int, letra: char)

 {
  while (letra == 'p'){
   if((n1%2 == 0) and (n2%2 == 0)){
     writeln(n1);
     writeln(n2);
    }else if((n1%2 == 0) and (n2%2 != 0)){
     writeln(n1);
    }else if((n1%2 != 0) and (n2%2 == 0)){
      writeln(n2);
    }else{
          writeln("Los numeros introducidos son impares: ");
    }
 }

  while (letra == 'i'){
   if ((n1%2 != 0) and (n2%2 != 0)){
        writeln(n1);
        writeln(n2);
   }else if((n1%2 == 0) and (n2%2 != 0)){
    writeln(n2);
   }else if((n1%2 != 0) and (n2%2 == 0)){
    writeln(n1);
   }else{
         writeln("Los numeros introducidos son pares: ");
   }
 }
}


/*
 * Programa principal.
 */

  procedure main ()
  n1: int;
  n2: int;
  letra: char;

  {
   write("Escribe un numero: ");
   readln(n1);
   write("Escribe un numero distinto al anterior: ");
   readln(n2);
   write("Escribe p(pares) o i(impares): ");
   readln(letra);


   obtenerNumeros(n1,n2,letra);

  }

