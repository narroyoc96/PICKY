/*
* Octavo programa en Picky.
* Autor: Noelia Arroyo
* Fecha: 28/11/17
*/

/*
* Nombre del programa
*/


program juegorol2;

consts:
	NumFilas = 15;
	NumCols = 35;
types:
	TipoFila = array[0..NumCols-1] of char;
	TipoMapa = array[0..NumFilas-1] of TipoFila;

procedure inicializar (ref mapa: TipoMapa)
	i: int;
	j: int;
{
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			mapa[i][j] = ' ';
		}
	}

	/* Murallas */
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			if ((i==0) or (i==NumFilas-1) or (j==0) or (j==NumCols-1)) {
				mapa[i][j] = '*';
			}
		}
	}

	
	/* Salidas del mapa */

	mapa[2][34]='S';
	mapa[8][34]='S';
	mapa[12][34]='S';

	/* Columnas */

	mapa[6][10]='c';
	mapa[5][25]='c';
	mapa[9][9]='c';
	mapa[11][18]='c';
	mapa[13][9]='c';
	mapa[4][6]='c';

	/* Trampas */

	mapa[10][12]='t';
	mapa[5][22]='t';
	mapa[12][12]='t';
	mapa[7][15]='t';

	
	/* Rivales */

	mapa[4][15]='r';
	mapa[13][26]='r';
	mapa[8][5]='r';

	/* Elemento */

	mapa[13][7]='e';
	mapa[7][14]='e';
	mapa[10][2]='e';
	mapa[2][2]='e';

	/* Jugador inicial */
	mapa[1][1]='X';

}

procedure imprimir (mapa: TipoMapa)
	i: int;
	j: int;
{
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			write (mapa[i][j]);
		}
		writeln ("");
	}
}

procedure mostrarMapa (mapa: TipoMapa)
	i: int;
	j: int;
{
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			if ((mapa[i][j]==' ') or (mapa[i][j]=='*') or (mapa[i][j]=='S')or (mapa[i][j]=='X')) {
				write (mapa[i][j]);
			}else {
				write (' ');
			}
		}
		writeln ("");
	}
}

procedure guardarMapa (mapa: TipoMapa)
	fichero: file;
	i: int;
	j: int;
{
	open(fichero, "datos.txt", "w");
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			if ((mapa[i][j]!=' ') and (mapa[i][j]!='*')){
				fwrite(fichero, i);
				fwrite(fichero, " ");
				fwrite(fichero, j);
				fwrite(fichero, " ");
				fwrite(fichero, mapa[i][j]);
				fwriteeol(fichero);
			}
		}
	}
	close(fichero);
}

procedure cargarMapa (ref mapa: TipoMapa, ref posX: int, ref posY: int)
	fichero: file;
	i: int;
	j: int;
	caracter: char;
	x: int;
	y: int;
{

	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			mapa[i][j] = ' ';
		}
	}

	/* Murallas */
	for (i=0, i<NumFilas) {
		for (j=0, j<NumCols) {
			if ((i==0) or (i==NumFilas-1) or (j==0) or (j==NumCols-1)) {
				mapa[i][j] = '*';
			}
		}
	}



	open(fichero, "datos.txt", "r");
	do{
		fread(fichero, x);
		fread(fichero, caracter);
		fread(fichero, y);
		fread(fichero, caracter);
		fread(fichero, caracter);
		mapa[x][y]=caracter;
		if (caracter=='X') {
			posX=x;
			posY=y;
		}

		
		fpeek(fichero, caracter);
		if(caracter==Eol){
			freadeol(fichero);
		}
		fpeek(fichero, caracter);
	}while(caracter!=Eof);
     
    
	close(fichero);
}

procedure tirarDado (ref posX: int, ref posY: int, ref mapa: TipoMapa, ref muerto: bool, ref salida: bool)
	direccion: char;
	tirada: int;
{

	write ("Cuanto has sacado en el dado: ");
	readln (tirada);
	while (tirada!=0) {
		imprimir (mapa);
		writeln ("Donde mueves (1-> Arriba, 2->Abajo, 3->Izquierda, 4->Derecha): ");
		readln (direccion);
		switch (direccion) {
			case '1': 
					if ((posX-1)>=0) {
						if ((mapa[posX-1][posY]=='c') or (mapa[posX-1][posY]=='*')){
							writeln ("Hay una columna o muralla, no puedes continuar por esa direccion");
						}else if (mapa[posX-1][posY]=='t') {
							writeln ("Estas herido, habia una trampilla. No pasa nada, te quitan la partida");

							mapa[posX-1][posY]='X';
							mapa[posX][posY]=' ';
							posX=posX-1;
							tirada=0;
						}else if (mapa[posX-1][posY]=='r') {
							writeln ("Te encontraste con un rival, estas muerto. Te quitaron la partida");
							tirada=0;
							muerto=True;
						}else if (mapa[posX-1][posY]=='e') {
							writeln ("Conseguiste un elemento, genial.");
							mapa[posX-1][posY]='X';
							mapa[posX][posY]=' ';

							posX=posX-1;
							tirada=tirada-1;
						}else if (mapa[posX-1][posY]=='S') {
							mapa[posX-1][posY]='X';
							mapa[posX][posY]=' ';
							tirada=0;
							salida=True;
						}else {
							mapa[posX-1][posY]='X';
							mapa[posX][posY]=' ';
							posX=posX-1;
							tirada=tirada-1;
						}
					}
			case '2': 
					if ((posX+1)<NumFilas) {
						if ((mapa[posX+1][posY]=='c') or (mapa[posX+1][posY]=='*')){
							writeln ("Hay una columna o muralla, no puedes continuar por esa ruta");
						}else if (mapa[posX+1][posY]=='t') {
							writeln ("Estas herido, habia una trampilla. No pasa nada, te quitan la partida");
							mapa[posX+1][posY]='X';
							mapa[posX][posY]=' ';
							posX=posX+1;
							tirada=0;
						}else if (mapa[posX+1][posY]=='r') {
							writeln ("Te encontraste con un rival, estas muerto. Te quitaron la partida");
							posX=posX+1;
							tirada=0;
							muerto=True;
						}else if (mapa[posX+1][posY]=='e') {
							writeln ("Conseguiste un elemento, genial.");
							mapa[posX+1][posY]='X';
							mapa[posX][posY]=' ';
							posX=posX+1;
							tirada=tirada-1;
						}else if (mapa[posX+1][posY]=='S') {
							mapa[posX+1][posY]='X';
							mapa[posX][posY]=' ';
							tirada=0;
							salida=True;
						}else {
							mapa[posX+1][posY]='X';
							mapa[posX][posY]=' ';
							posX=posX+1;
							tirada=tirada-1;
						}
					}
			case '3': 
					if ((posY-1)>=0) {
						if ((mapa[posX][posY-1]=='c') or (mapa[posX][posY-1]=='*')){
							writeln ("Hay una columna o muralla, no puedes continuar por esa ruta");
						}else if (mapa[posX][posY-1]=='t') {
							writeln ("Estas herido, habia una trampilla. No pasa nada, te quitan la partida");
							mapa[posX][posY-1]='X';
							mapa[posX][posY]=' ';
							posY=posY-1;
							tirada=0;
						}else if (mapa[posX][posY-1]=='r') {
							writeln ("Te encontraste con un rival, estas muerto. Te quitaron la partida");
							posY=posY-1;
							tirada=0;
							muerto=True;
						}else if (mapa[posX][posY-1]=='e') {
							writeln ("Conseguiste un elemento, genial.");
							mapa[posX][posY-1]='X';
							mapa[posX][posY]=' ';
							posY=posY-1;
							tirada=tirada-1;
						}else if (mapa[posX][posY-1]=='S') {
							mapa[posX][posY-1]='X';
							mapa[posX][posY]=' ';
							tirada=0;
							salida=True;
						}else {
							mapa[posX][posY-1]='X';
							mapa[posX][posY]=' ';
							posY=posY-1;
							tirada=tirada-1;
						}
					}
			case '4': 
					if ((posY+1)<NumCols) {
						if ((mapa[posX][posY+1]=='c') or (mapa[posX][posY+1]=='*')){
							writeln ("Hay una columna o muralla, no puedes continuar por esa ruta");
						}else if (mapa[posX][posY+1]=='t') {
							writeln ("Estas herido, habia una trampilla. No pasa nada, te quitan la partida");
							mapa[posX][posY+1]='X';
							mapa[posX][posY]=' ';
							posY=posY+1;
							tirada=0;
						}else if (mapa[posX][posY+1]=='r') {
							writeln ("Te encontraste con un rival, estas muerto. Te quitaron la partida");
							posY=posY+1;
							tirada=0;
							muerto=True;
						}else if (mapa[posX][posY+1]=='e') {
							writeln ("Conseguiste un elemento, genial.");
							mapa[posX][posY+1]='X';
							mapa[posX][posY]=' ';
							posY=posY+1;
							tirada=tirada-1;
						}else if (mapa[posX][posY+1]=='S') {
							mapa[posX][posY+1]='X';
							mapa[posX][posY]=' ';
							tirada=0;
							salida=True;
						}else {
							mapa[posX][posY+1]='X';
							mapa[posX][posY]=' ';
							posY=posY+1;
							tirada=tirada-1;
						}
					}
			default: writeln ("Te saliste del mapa o has hecho algun movimiento incorrecto");
		}
		
	}
}
procedure nuevaPartida (ref mapa: TipoMapa)
	muerto: bool;
	salida: bool;
	salir: bool;
	opcion: char;
	tirada: int;
	posX: int;
	posY: int;

{
	muerto=False;
	salida=False;
	salir=False;

	inicializar(mapa);
	posX=1;
	posY=1;

	do {
		mostrarMapa (mapa);
		writeln ("1- Mover");
		writeln ("2- Salir al menu principal");
		write ("Que quieres hacer: ");
		readln (opcion);
		if (opcion=='1') {
			tirarDado (posX, posY, mapa, muerto, salida);
		}else if (opcion=='2') {
			salir=True;
		}else {
			writeln ("opcion incorrecta");
		}
	}while (not salir and not salida and not muerto);

	if (muerto) {
		writeln ("Mala suerte");
	}
	if (salida) {
		writeln ("Genial, has ganado");
	}
	if (salir) {
		writeln ("Guarda o perderas el progreso");
	}
	

}

procedure continuarPartida (ref mapa: TipoMapa)
	muerto: bool;
	salida: bool;
	salir: bool;
	opcion: char;
	tirada: int;
	posX: int;
	posY: int;

{
	muerto=False;
	salida=False;
	salir=False;

	cargarMapa (mapa, posX, posY);
	

	do {
		mostrarMapa (mapa);
		writeln ("1- Mover");
		writeln ("2- Salir al menu principal");
		write ("Que quieres hacer: ");
		readln (opcion);
		if (opcion=='1') {
			tirarDado (posX, posY, mapa, muerto, salida);
		}else if (opcion=='2') {
			salir=True;
		}else {
			writeln ("opcion incorrecta");
		}
	}while (not salir and not salida and not muerto);

	if (muerto) {
		writeln ("Mala suerte");
	}
	if (salida) {
		writeln ("Genial, has ganado");
	}
	if (salir) {
		writeln ("Guarda o perderas el progreso");
	}
	

}
procedure seleccionarOpcion (opcion: char, ref mapa: TipoMapa)
{
	switch (opcion) {
	case '1': nuevaPartida (mapa);
	case '2': mostrarMapa (mapa); 
	case '3': guardarMapa (mapa);
	case '4': continuarPartida (mapa);
	case '5': writeln ("Adios");
	default: writeln ("Opcion no reconocida");
	}

}
function menu():char
	opcion: char;
{
        writeln ("======================================================");
        writeln ("                                                      ");
        writeln (" HOLA, ACABA DE INTRODUCIRSE AL JUEGO DE NOELIA ARROYO");
        writeln ("                                                      ");
        writeln ("======================================================");
        writeln ("                                                      ");
        writeln ("------------------------------------------------------");
        writeln (" Seleccione una de las siguientes opciones            ");
        writeln ("------------------------------------------------------");
	writeln ("1- Nueva partida");
	writeln ("2- Mostrar mapa");
	writeln ("3- Guardar partida");
	writeln ("4- Continuar partida");
	writeln ("5- Salir");
        writeln ("------------------------------------------------------");
        writeln ("                                                      ");
        writeln ("======================================================");
	write ("Opcion: ");
	readln (opcion);
	return opcion;
	
}


procedure main ()
	opcion: char;
	mapa: TipoMapa;

{
	inicializar (mapa);
	do {
		opcion=menu ();
		seleccionarOpcion (opcion, mapa);
	}while (opcion!='5');
	
}
