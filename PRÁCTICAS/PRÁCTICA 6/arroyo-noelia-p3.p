/*
 * Quinto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (26/10/17)
 */

/*
 * Nombre del programa
 */
 program media;


/* Funcion que calcula la media aritmetica */

  procedure calcularMediaAritmetica()
  n1: int;
  sumador: int;
  contador: int;
  media1: float;

  {
   sumador = 0;
   contador = 0;

    do{
       write("Numero: ");
       readln(n1);
       
       if (n1 != 0){
           sumador = sumador + n1;
           contador = contador +1;

       }
     } while ((n1 != 0) and (contador < 10));
   
    media1 = float(sumador) / float(contador);
    write("La media aritmetica de los numeros es: ");
    writeln(media1);

   }
           


/*
 * Programa Principal.
 */

  procedure main ()

  {
   calcularMediaAritmetica();
  }
