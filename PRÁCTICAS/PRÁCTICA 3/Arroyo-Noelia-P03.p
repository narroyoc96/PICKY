/*
*Segundo programa en Picky
*Autor: Noelia Arroyo
*Fecha: (26/09/17)
*/

/*
*Nombre del programa.
*/
program segundo;

/*
*Constantes
*/

consts:

Pi = 3.1415926;
r = 8.0;
rcil = 6.0;
h = 7.0;
l = 4.5;
rint = 2.0;
rext = 6.0;


/*
Funciones y procedimientos.
*/

function longitudcirculo(r: float): float {
return 2.0 * Pi * r;
}

function areacirculo (r: float): float {
return Pi * r * r;
}

function volumencilindro (rcil: float, h: float): float {
return Pi * rcil * rcil * h;
} 

function areacuadrado (lado: float): float {
return l * l;
}

function areacorona (rint: float, rext: float): float {
return Pi * (rext * rext - rint * rint);
}

/*
*Programa principal.
*/
procedure main()
/*Espacio para variables globales*/
radio: float; /* Declaracion de variable*/


{
write ("Ejecutada la funcion longitudcirculo con el valor de entrada r con el resultado: ");
writeln (longitudcirculo(r));

write ("Ejecutada la funcion areacirculo con el valor de entrada r con el resultado: ");
writeln (areacirculo(r));

write ("Ejecutada la funcion volumencilindro con el valor de entrada rcil y h con el resultado: ");
writeln (volumencilindro(rcil,h));

write ("Ejecutada la funcion areacuadrado con el valor de entrada l con el resultado: ");
writeln (areacuadrado(l));

write ("Ejecutada la funcion areacorona con el valor de entrada rint y rext con el resultado: ");
writeln (areacorona(rint,rext));

}

