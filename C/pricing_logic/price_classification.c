#include <stdio.h>
int main ()
{
 float preco, precof, percent, imposto;
 int categoria; 
 char op;

 printf("Digite a categoria:\n1.Limpeza\n2.Alimentacao\n3.Vestuario\n");
 scanf("%d%*c",&categoria);
 printf("Digite o preco:\n");
 scanf("%f%*c",&preco);
 printf("Qual a situacao?\nR.Necessita refrigeracao\nN.Nao necessita refrigeracao\n");
 scanf("%c%*c",&op);

 if (preco<=25.00){

    if (categoria==1){
         percent=preco*0.05;

    }else if (categoria==2){
        percent=preco*0.08;
        
    }if (categoria==3){
        percent=preco*0.10;}


 }else if (preco>25.00){

    if (categoria==1){
         percent=preco*0.12;

    }else if (categoria==2){
         percent=preco*0.15;

    }if (categoria==3){
         percent=preco*0.18;}


 }if (categoria==2 || op=='R'){
        imposto=preco*0.05;

 }else{
     imposto=preco*0.08;}
 
     precof=preco+percent-imposto;

  if (precof<=50.00){
      printf("\nA classificacao do preco e de: Barato!");

  }else if (precof>=50.00 && precof<120.00){
      printf("\nA classificacao do preco e de: Normal!");

  }if (precof>=120.00){
      printf("\nA classificacao do preco e de: Caro!");

      }printf("\nO novo preco e de: R$%.2f",precof);

  return 0;

}