#include <stdio.h>
int main ()
{
  float salario, salariof;

  printf("Digite seu salario atual:\n");
  scanf("%f%*c",&salario);

  if(salario<300.00){
      salariof=salario*1.50;

  }else if (salario>=300.00 && salario<500.00){
      salariof=salario*1.40;

  }if (salario>=500.00 && salario<700.00){
      salariof=salario*1.30;

  }else if (salario>=700.00 && salario<800.00){
      salariof=salario*1.20;

  }if (salario>=800.00 && salario<1000.00){
      salariof=salario*1.10;

  }else if (salario>=1000.00){
      salariof=salario*1.05;

  }printf("Seu novo salario sera de: R$%.2f",salariof);

  return 0;
}