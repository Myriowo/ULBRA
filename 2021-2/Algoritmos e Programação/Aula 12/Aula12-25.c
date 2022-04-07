#include <stdio.h>
int main ()
{
  float bonus;
  int extra, minuto, falta;

  printf("Digite o seu total de horas extras:\n");
  scanf("%d%*c",&extra);
  printf("Digite o seu total de horas faltadas:\n");
  scanf("%d%*c",&falta);

  minuto=(extra - (2/3 *falta))*60;

  if (minuto>=2400){
    bonus=500.00;

  }else if (minuto<1800 && minuto<2400){
    bonus=400.00;

  }if (minuto<=1200 && minuto<1800){
    bonus=300.00;

  }else if (minuto<=600 && minuto<1200){
    bonus=200.00;

  }if (minuto>600){
    bonus=100.00;}
  
  printf("Sua gratificacao sera de: R$%.2f",bonus);

  return 0;
}