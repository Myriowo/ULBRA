#include <stdio.h>
int main ()
{
 int preco, codigo;

 printf("Digite o preco do produto:\n");
 scanf("%d%*c",&preco);
 printf("Digite o codigo do produto:\n");
 scanf("%d%*c",&codigo);

 if (codigo==1){
     printf("Procedencia: Sul");

 }else if (codigo==2){
     printf("Procedencia: Norte");

 }if (codigo==3){
     printf("Procedencia: Leste");

 }else if (codigo==4){
     printf("Procedencia: Oeste");

 }if (codigo==5 || codigo==6){
     printf("Procedencia: Nordeste");

 }else if (codigo>=7 && codigo<=9){
     printf("Procedencia: Sudeste");

 }if (codigo>=10 && codigo<=20){
     printf("Procedencia: Centro-oeste");

 }else if (codigo>=21 && codigo<=30){
     printf("Procedencia: Noroeste");

 }else {
     printf("Codigo invalido");
      
 }return 0;
}