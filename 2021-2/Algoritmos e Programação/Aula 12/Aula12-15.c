#include <stdio.h>
int main ()
{
  float valor, op, valor2;

  printf("Qual o valor que deseja investir?\n");
  scanf("%f%*c",&valor);
  printf("Qual o tipo de operacao que voce deseja?\n1.Poupanca\n2.Fundo de renda fixa\n");
  scanf("%f%*c",&op);

  if (op==1){
      valor2=valor*1.03;
      printf("Seu rendimento mensal sera de: %.2f",valor2);

  }else if (op==2){
      valor2=valor*1.04;
      printf("Seu rendimento mensal sera de: %.2f",valor2);

  }else{
      printf("Operacao invalida.");

  }return 0;
}