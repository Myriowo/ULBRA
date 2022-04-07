#include <stdio.h>
int main ()
{
  float codigo, qtd, preco, desconto, nota, nota2;

  printf("Digite o codigo do produto:\n");
  scanf("%f%*c",&codigo);
  printf("Digite a quantidade comprada:\n");
  scanf("%f%*c",&qtd);

  if (codigo>=1 && codigo<=10){
      preco=10.00;
    
    }else if (codigo>=11 && codigo<=20){
      preco=15.00;

    }if (codigo>=21 && codigo<=30){
      preco=20.00;

    }else if (codigo>=31 && codigo<40){
      preco=30.00;}


    nota=codigo*qtd;

  if (nota<=250.00){
    desconto=nota*0.05;

    }else if (nota>=250.00 && nota<500.00){
    desconto=nota*0.10;

    }if (nota>500.00){
    desconto=nota*0.15;

    }printf("Preco unitario do produto: R$%.2f\nPreco total da nota: R$%.2f\nValor do desconto: R$%.2f\nValor final com desconto aplicado: R$%.2f", preco, nota, desconto,nota2 = (nota) - (desconto));

  return 0;
}