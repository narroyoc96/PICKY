/*
* Septimo programa en Picky.
* Autor: Noelia Arroyo Castaño
* Fecha: 14/11/17
*/


/*
* Nombre del programa
*/

  program juegorol;


/*
* Constantes
*/

  consts:

  MAXIMOTERMINO = 80;


/*
* Tipos
*/

  types:

   TipoCaracter = array [0..MAXIMOTERMINO-1] of char;
   TipoTermino = record

   {
    caracter: TipoCaracter;
    maximo: int;
   };

   TipoEsfera = (Cardinal, Correspondencia, Entropia, Espiritu, Fuerzas, Materia, Mente, Tiempo, Vida);

   TipoPersonaje = record

   {

    personaje: TipoTermino;
    jugador: TipoTermino;
    tradicion: TipoTermino;
    esfera: TipoEsfera;

         
     fuerza: int;
     percepcion: int;
     destreza: int;     
     manipulacion: int;
     resistencia: int;
     inteligencia: int;


     alerta: int;
     armascc: int;
     esquivar: int;
     armasfuego: int;
     liderazgo: int;
     sigilo: int;
     pelea: int;
     supervivencia: int;
     subterfugio: int;
     medicina: int;
     ocultismo: int;
     conducir: int;



     puntosDeExperiencia: int;
   };


/*
* Funciones
*/

  procedure leerTermino(ref termino: TipoTermino)
     a: char;

     {
      termino.maximo = 0;
       do{
          read(a);
          termino.caracter[termino.maximo] = a;
          termino.maximo = termino.maximo +1;
          peek(a);
       }while(a != Eol);
        readeol();
     }


  procedure copiarTermino(termino: TipoTermino)
    b: int;

    {
     for(b = 0, b < termino.maximo){
         write(termino.caracter[b]);
         }
    }


  procedure escribirAtributos(ref personaje: TipoPersonaje)
       fuerza: int;
       percepcion: int;
       destreza: int;     
       manipulacion: int;
       resistencia: int;
       inteligencia: int;
       contador: int;

       {

        writeln("Escribe los atributos repartiendo 10 puntos");
         
         do{
            contador = 0;
          do{
             write("Fuerza: ");
             readln(fuerza);
             if(fuerza>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while(fuerza>4);
               contador = contador + fuerza;


         do{
             write("Destreza: ");
             readln(destreza);
             if(destreza>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while (destreza>4);
               contador = contador + destreza;


         do{
             write("Resistencia: ");
             readln(resistencia);
             if(resistencia>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while (resistencia>4);
               contador = contador + resistencia;


         do{
             write("Percepcion: ");
             readln(percepcion);
             if(percepcion>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while (percepcion>4);
               contador = contador + percepcion;


         do{
             write("Manipulacion: ");
             readln(manipulacion);
             if(manipulacion>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while (manipulacion>4);
               contador = contador + manipulacion;


         do{
             write("Inteligencia: ");
             readln(inteligencia);
             if(inteligencia>4){
                 writeln("Has superado el limite, maximo 4 puntos");
             }
             }while (inteligencia>4);
               contador = contador + inteligencia;


     if(contador != 10){
          writeln("Error, los puntos son incorrectos. Por favor, introduzca 10 puntos");
     }
    
   }while(contador != 10);
     personaje.fuerza = 1+fuerza;
     personaje.percepcion = 1+percepcion;
     personaje.destreza = 1+destreza;
     personaje.manipulacion = 1+manipulacion;
     personaje.resistencia = 1+resistencia;
     personaje.inteligencia = 1+inteligencia;      

     }

  
  procedure escribirHabilidades (ref personaje: TipoPersonaje)
     alerta: int;
     armascc: int;
     esquivar: int;
     armasfuego: int;
     liderazgo: int;
     sigilo: int;
     pelea: int;
     supervivencia: int;
     subterfugio: int;
     medicina: int;
     ocultismo: int;
     conducir: int;
     contador: int;

     {

      writeln("Escribe las habilidades repartiendo 20 puntos");
       do{
          contador = 0;
           do{
              write ("Alerta: ");
              readln(alerta);
              if(alerta>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (alerta>5);
        
       contador = contador + alerta;
         do{
              write ("Esquivar: ");
              readln(esquivar);
              if(esquivar>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (esquivar>5);
               contador = contador + esquivar;


         do{
              write ("Liderazgo: ");
              readln(liderazgo);
              if(liderazgo>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (liderazgo>5);
               contador = contador + liderazgo;


         do{
              write ("Pelea: ");
              readln(pelea);
              if(pelea>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (pelea>5);
               contador = contador + pelea;


         do{
              write ("Subterfugio: ");
              readln(subterfugio);
              if(subterfugio>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (subterfugio>5);
               contador = contador + subterfugio;


         do{
              write ("Ocultismo: ");
              readln(ocultismo);
              if(ocultismo>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (ocultismo>5);
               contador = contador + ocultismo;


         do{
              write ("Armas C.C.: ");
              readln(armascc);
              if(armascc>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (armascc>5);
               contador = contador + armascc;


         do{
              write ("Armas de fuego: ");
              readln(armasfuego);
              if(armasfuego>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (armasfuego>5);
               contador = contador + armasfuego;

   
         do{
              write ("Sigilo: ");
              readln(sigilo);
              if(sigilo>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (sigilo>5);
               contador = contador + sigilo;


         do{
              write ("Supervivencia: ");
              readln(supervivencia);
              if(supervivencia>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (supervivencia>5);
               contador = contador + supervivencia;


         do{
              write ("Medicina: ");
              readln(medicina);
              if(medicina>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (medicina>5);
               contador = contador + medicina;


         do{
              write ("Conducir: ");
              readln(conducir);
              if(conducir>5){
                 writeln("Has superado el limite, maximo 5 puntos");
             }
             }while (conducir>5);
               contador = contador + conducir;



         if(contador!= 20){
             writeln("Error, los puntos son incorrectos. Por favor, introduzca 20 puntos");
         }


  }while(contador != 20);
    personaje.alerta = alerta;
    personaje.armascc = armascc;
    personaje.esquivar = esquivar;
    personaje.armasfuego = armasfuego;
    personaje.liderazgo = liderazgo;
    personaje.sigilo = sigilo;
    personaje.pelea = pelea;
    personaje.supervivencia = supervivencia;
    personaje.subterfugio = subterfugio;
    personaje.medicina = medicina;
    personaje.ocultismo = ocultismo;
    personaje.conducir = conducir;     

    }


  procedure crearPersonaje(ref personaje: TipoPersonaje)

   {
   
     write("Escriba el nombre de su personaje: ");
            leerTermino(personaje.personaje);

     write("Escriba el nombre del jugador: ");
            leerTermino(personaje.jugador);

     write("Escriba la tradicion: ");
            leerTermino(personaje.tradicion);

     write("Escriba la esfera (Cardinal, Correspondencia, Entropia, Espiritu, Fuerzas, Materia, Mente, Tiempo, Vida): ");
            readln(personaje.esfera);
   
   
     escribirAtributos(personaje);
     escribirHabilidades(personaje);

    }


  procedure completarAtributo(puntos: int)
    t: int;

    {
      for(t=1, t<=puntos){
        write("*");
    }
      for(t=puntos+1, t<=4){
        write("O");
    }

    }


  procedure verAtributos(personaje: TipoPersonaje)
  {
    write("Fuerza: ");
    completarAtributo(personaje.fuerza);

    write("          Percepcion: ");
    completarAtributo(personaje.percepcion);
    writeeol();

   write("Destreza: ");
    completarAtributo(personaje.destreza);

    write("          Manipulacion: ");
    completarAtributo(personaje.manipulacion);
    writeeol();

    write("Resistencia: ");
    completarAtributo(personaje.resistencia);

    write("         Inteligencia: ");
    completarAtributo(personaje.inteligencia);
    writeeol();
  }

  procedure verHabilidades(personaje: TipoPersonaje)

  {
    write("Alerta: ");
    completarAtributo (personaje.alerta);
   
    write("          Armas CC: ");
    completarAtributo(personaje.armascc);
    writeeol();
  
    write("Esquivar: ");
    completarAtributo(personaje.esquivar);
   
    write("          Armas Fuego: ");
    completarAtributo(personaje.armasfuego);
    writeeol();
    
    write("Liderazgo: ");
    completarAtributo(personaje.liderazgo);
   
    write ("          Sigilo: ");
    completarAtributo(personaje.sigilo);
    writeeol();
    
    write("Pelea: ");
    completarAtributo(personaje.pelea);
    
    write ("          Supervivencia: ");
    completarAtributo(personaje.supervivencia);
    writeeol();
    
    write("Subterfugio: ");
    completarAtributo(personaje.subterfugio);
    
    write("          Medicina: ");
    completarAtributo(personaje.medicina);
    writeeol();
   
    write("Ocultismo: ");
    completarAtributo(personaje.ocultismo);
    
    write ("          Conducir: ");
    completarAtributo(personaje.conducir);
    writeeol();
  }


  procedure verPersonaje (personaje: TipoPersonaje)

  {
	writeln ("------------------------------------------");

	write("Nombre Personaje: ");
	copiarTermino(personaje.personaje);

	write("          Esfera: ");
	writeln(personaje.esfera);

	write("Nombre Jugador: ");
	copiarTermino(personaje.jugador);

	write("          Tradicion: ");
	copiarTermino(personaje.tradicion);
	writeeol();


	writeln ("----------------ATRIBUTOS----------------");
	verAtributos (personaje);

	writeln ("---------------HABILIDADES---------------");
	verHabilidades (personaje);
	

  }


  procedure asignarPuntos(ref personaje: TipoPersonaje)
	puntos: int;
  {
	write("Escribe los puntos de experiencia que quiere asignar al personaje: ");
	readln(puntos);
	personaje.puntosDeExperiencia = personaje.puntosDeExperiencia+puntos;
}


  procedure acabarAtributo(ref personaje: TipoPersonaje)
	opcion: char;
	puntoAcabar: int;

{

	writeln ("Elige el atributo que quiere mejorar: ");
	do {
		writeln ("1- Fuerza");
		writeln ("2- Destreza");
		writeln ("3- Resistencia");
		writeln ("4- Percepcion");
		writeln ("5- Manipulacion");
		writeln ("6- Inteligencia");
		readln (opcion);

	}while ((opcion<'1') or (opcion>'6'));

	switch (opcion) {
	case '1': puntoAcabar=personaje.fuerza*5;
	case '2': puntoAcabar=personaje.destreza*5;
	case '3': puntoAcabar=personaje.resistencia*5;
	case '4': puntoAcabar=personaje.percepcion*5;
	case '5': puntoAcabar=personaje.manipulacion*5;
	case '6': puntoAcabar=personaje.inteligencia*5;
	}

	if(puntoAcabar<=personaje.puntosDeExperiencia){
		switch(opcion){
		case '1': personaje.fuerza=personaje.fuerza+1;
		case '2': personaje.destreza=personaje.destreza+1;
		case '3': personaje.resistencia=personaje.resistencia+1;
		case '4': personaje.percepcion=personaje.percepcion+1;
		case '5': personaje.manipulacion=personaje.manipulacion+1;
		case '6': personaje.inteligencia=personaje.inteligencia+1;
		}
		personaje.puntosDeExperiencia=personaje.puntosDeExperiencia-puntoAcabar;
	}else{
		write("Te quedan ");
		write(personaje.puntosDeExperiencia);
		write(" y necesitas tener ");
		writeln(puntoAcabar);
		writeln("No te quedan puntos suficientes");
	}

  }


  procedure acabarHabilidad(ref personaje: TipoPersonaje)
	opcion: int;
	puntoAcabar: int;

  {

	writeln("Elige la habilidad que quiere mejorar: ");
	do {
		writeln ("1- Alerta");
		writeln ("2- Esquivar");
		writeln ("3- Liderazgo");
		writeln ("4- Pelea");
		writeln ("5- Subterfugio");
		writeln ("6- Ocultismo");
		writeln ("7- Armas CC");
		writeln ("8- Armas Fuego");
		writeln ("9- Sigilo");
		writeln ("10- Supervivencia");
		writeln ("11- Medicina");
		writeln ("12- Conducir");
		readln (opcion);

	}while((opcion<1) or (opcion>12));

	switch(opcion){

	case 1: puntoAcabar=personaje.alerta*2;

	case 2: puntoAcabar=personaje.esquivar*2;

	case 3: puntoAcabar=personaje.liderazgo*2;

	case 4: puntoAcabar=personaje.pelea*2;

	case 5: puntoAcabar=personaje.subterfugio*2;

	case 6: puntoAcabar=personaje.ocultismo*2;

	case 7: puntoAcabar=personaje.armascc*2;

	case 8: puntoAcabar=personaje.armasfuego*2;

	case 9: puntoAcabar=personaje.sigilo*2;

	case 10: puntoAcabar=personaje.supervivencia*2;

	case 11: puntoAcabar=personaje.medicina*2;

	case 12: puntoAcabar=personaje.conducir*2;

	}

	if(puntoAcabar==0){
		puntoAcabar=3;
	}

	if(puntoAcabar<=personaje.puntosDeExperiencia){

		switch(opcion){

		case 1: personaje.alerta=personaje.alerta+1;

		case 2: personaje.esquivar=personaje.esquivar+1;

		case 3: personaje.liderazgo=personaje.liderazgo+1;

		case 4: personaje.pelea=personaje.pelea+1;

		case 5: personaje.subterfugio=personaje.subterfugio+1;

		case 6: personaje.ocultismo=personaje.ocultismo+1;

		case 7: personaje.armascc=personaje.armascc+1;

		case 8: personaje.armasfuego=personaje.armasfuego+1;

		case 9: personaje.sigilo=personaje.sigilo+1;

		case 10: personaje.supervivencia=personaje.supervivencia+1;

		case 11: personaje.medicina=personaje.medicina+1;

		case 12: personaje.conducir=personaje.conducir+1;

		}
		personaje.puntosDeExperiencia=personaje.puntosDeExperiencia-puntoAcabar;
	}else{
		write ("Te quedan ");
		write (personaje.puntosDeExperiencia);
		write (" y necesitas tener ");
		writeln (puntoAcabar);
		writeln ("No te quedan puntos suficientes");
	}

  }


  procedure acabarPuntos (ref personaje: TipoPersonaje)
	opcion: char;

  {

	write("Te quedan estos puntos de experiencia: ");
	writeln(personaje.puntosDeExperiencia);
	do {

		write("En que quieres gastar tus puntos en atributos o en habilidades? (1, 2): ");
		readln(opcion);

	}while((opcion<'1') or (opcion>'2'));

	if(opcion=='1'){

		acabarAtributo(personaje);

	}else{

		acabarHabilidad(personaje);

	}
}


  procedure crearUnPersonajePorDefecto()

  {
	writeln ("----------------------------------------");
	write("Nombre: ");
	write("Jorge");
	write("    Esfera: ");
	writeln("Vida");
	write("Jugador: ");
	write("Toro");
	write("    Tradicion: ");
	writeln("Mago");
	writeeol();

        writeln ("                                         ");
	writeln ("===============ATRIBUTOS=================");
        writeln ("                                         ");
	writeln(" Fuerza______*OOOO     Percepcion____**OOO");
        writeln(" Destreza____*OOOO     Manipulacion__*OOOO");
        writeln(" Resistencia_***OO     Inteligencia__**OOO");
        writeln ("                                         ");
	writeln ("==============HABILIDADES================");
        writeln ("                                         ");
	writeln(" Alerta______**OOO     Armas C.C_____**OOO");
        writeln(" Esquivar____*OOOO    Armas de fuego_***OO");
        writeln(" Liderazgo___**OOO     Sigilo________**OOO");
        writeln(" Pelea_______***OO    Supervivencia__*OOOO");
        writeln(" Subterfugio_*OOOO       Medicina____*OOOO");
        writeln(" Ocultismo___*OOOO       Conducir____*OOOO");
  }



  procedure seleccionarOpcion(opcion: char, ref personaje: TipoPersonaje)
  {
	switch(opcion){

	case '1': crearPersonaje(personaje);

	case '2': verPersonaje(personaje);

	case '3': asignarPuntos(personaje);

	case '4': acabarPuntos(personaje);

	case '5': crearUnPersonajePorDefecto ();

	case '6': writeln ("Acaba de salir del juego, te espero pronto.");

	default: writeln ("Opcion no valida.");
	}

  }


  function menu():char
	opcion: char;
  {
       
        writeln ("                                                    ");
        writeln ("====================================================");
        writeln ("                                                    ");
	writeln("HOLA, ACABA DE INTRODUCIRSE AL JUEGO DE NOELIA ARROYO");
        writeln ("                                                    ");
        writeln ("====================================================");
        writeln ("                                                    ");
        writeln("Seleccione una de las siguientes opciones");
        writeln ("                                                    ");
        writeln ("1- Crear personaje");
        writeln ("                                                    ");
	writeln ("2- Mostrar personaje");
        writeln ("                                                    ");
	writeln ("3- Dar puntos de experiencia");
        writeln ("                                                    ");
	writeln ("4- Gastar puntos de experiencia");
        writeln ("                                                    ");
	writeln ("5- Generar personaje por defecto");
        writeln ("                                                    ");
	writeln ("6- Salir");
        writeln ("                                                    ");
	writeln ("====================================================");
        readln (opcion);
	return opcion;
	
  }


  procedure main ()
	opcion: char;
	personaje: TipoPersonaje;

  {
	personaje.puntosDeExperiencia = 0;

	do {
		opcion=menu ();
		seleccionarOpcion (opcion, personaje);

	}while (opcion!='0');	

  }
