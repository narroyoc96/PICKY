/*
 * Quinto programa en Picky.
 * Autor: Noelia Arroyo
 * Fecha: (26/10/17)
 */

/*
 * Nombre del programa
 */
 program ordenar10;

/* constantes */
consts:
  
  NumElems = 10;
 
  

/* Tipos */

types:

  TipoIndice = int 0..NumElems-1;
  TipoNums = array [TipoIndice] of int;





procedure escribirNumeros (ref nums: TipoNums)
i:int;
a: int;
c: int;

{
 for (i=0, i < NumElems) {
     write("Dame un numero: ");
     read(a); 
     nums[i] = a;
 

 }
  writeeol();
}

procedure ordenarNumeros(ref nums: TipoNums)
 i: int;
 b: int;

 aux: int;
{

for(i=0,i<(NumElems-1)){
            for(b=i+1,b<NumElems){
                if(nums[i]>nums[b]){
                    aux=nums[i];
                    nums[i]=nums[b];
                    nums[b]=aux;
 
                }
            }
        } 

}

procedure imprimirNumeros(ref nums: TipoNums)
i: int;
{
 for (i=0, i < NumElems) {
     
   writeln(nums[i]);
 }


}


/*
 * Programa Principal.
 */

procedure main ()

nums: TipoNums;


{
 

 escribirNumeros(nums);
 ordenarNumeros(nums);
 imprimirNumeros(nums);
}
  



