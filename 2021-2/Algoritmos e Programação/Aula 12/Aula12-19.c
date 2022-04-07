#include <stdio.h>
int main ()
{
  float altura, sexo, peso;

  printf("Digite sua altura:\n");
  scanf("%f%*c",&altura);
  printf("Qual seu sexo biologico?\n1.Feminino\n2.Masculino\n");
  scanf("%f%*c",&sexo);

  if (sexo==1){
      peso=(62.1*altura)-44.7;
      printf("Seu peso ideal e de:%.1f",peso);

  }else if (sexo==2){
      peso=(72.7*altura)-58;
      printf("Seu peso ideal e de:%.1f",peso);

  }else{
      printf("Operacao invalida");

  }return 0;
}