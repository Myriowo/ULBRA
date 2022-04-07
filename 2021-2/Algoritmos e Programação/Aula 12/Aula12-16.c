#include <stdio.h>
int main ()
{
  float preco, percent, precof;

  printf("Digite o preco atual do produto:\n");
  scanf("%f%*c",&preco);

  if (preco<30.00){
      printf("Desculpe, voce nao tem direito ao desconto");

  }else if (preco>=30.00 && preco<100.00){
      percent=preco*0.10;
      precof=preco-percent;
      printf("O valor de desconto sera de: R$%.2f\nO novo preco do produto sera de: R$%.2f",percent, precof);
  }if (preco>100.00){
      percent=preco*0.15;
      precof=preco-percent;
      printf("O valor do desconto sera de: R$%.2f\nO novo preco do produto sera de: R$%.2f",percent, precof);
  }return 0;
}