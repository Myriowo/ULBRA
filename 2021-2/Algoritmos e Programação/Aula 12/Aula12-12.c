#include <stdio.h>
int main ()
{
  float salario, grat, salariof, imposto;

  printf("Digite seu salario atual:\n");
  scanf("%f%*c",&salario);
  
    imposto=salario*0.07;

  if (salario<350.00){
       grat=100.00;
       salariof=grat+salario-imposto;
       printf("O valor a ser recebido e de: R$%.2f\n",salariof);

  }else if (salario>300.00 && salario<600.00){
       grat=75.00;
       salariof=grat+salario-imposto;
       printf("O valor a ser recebido e de: R$%.2f\n",salariof);

  }if (salario>=600.00 && salario<=900.00){
       grat=50.00;
       salariof=grat+salario-imposto;
       printf("O valor a ser recebido e de: R$%.2f\n",salariof);

  }else if (salario>900.00){
       grat=35.00;
       salariof=grat+salario-imposto;
       printf("O valor a ser recebido e de: R$%.2f\n",salariof);
       
  }return 0;
}