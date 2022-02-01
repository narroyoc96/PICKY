/*
 * Tercer programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (05/10/17)
 */

/*
 * Nombre del programa
 */
 program programfactorial5;


/*
 * Constantes
 */
 consts:

 NUM_FACTORIAL = 5;



/*
 * Funciones y procedimientos.
 */
 
 function calcularFactorial (): int
 

  temp: int; /* DECLARACION */
  cont: int;

 {
   cont = NUM_FACTORIAL;
   temp = NUM_FACTORIAL;
   
   while (cont > 1){
    temp = temp * (cont - 1);
    cont = cont -1;
    }

   write ("El valor factorial es: ");
   writeln (temp);
   return (temp);
 }


/*
 * Programa Principal.

 */
 procedure main ()
 
  valor: int;
 {
  valor = calcularFactorial();
 }
