#include <stdio.h>
int main ()
{
  float idade, peso, grupo;

  printf("Digite sua idade:\n");
  scanf("%f%*c",&idade);
  printf("Digite seu peso:\n");
  scanf("%f%*c",&peso);

 if (idade<20){
      
    if (peso<=60){
       printf("Grupo de risco: 9"); 

    }else if (peso>60 && peso<=90){
       printf("Grupo de risco: 8");

    }if (peso>90){
       printf("Grupo de risco: 7");}

 }if (idade>=20 && idade<=50){

    if (peso<=60){
       printf("Grupo de risco: 6"); 

    }else if (peso>60 && peso<=90){
       printf("Grupo de risco: 5");

    }if (peso>90){
       printf("Grupo de risco: 4");}

 }if (idade>50){

    if (peso<=60){
       printf("Grupo de risco: 3"); 

    }else if (peso>60 && peso<=90){
       printf("Grupo de risco: 2");

    }if (peso>90){
       printf("Grupo de risco: 1");}

    }return 0;
  
}