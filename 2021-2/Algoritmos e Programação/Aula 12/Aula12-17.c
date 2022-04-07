#include <stdio.h>
int main ()
{
  float senha;

  printf("Digite a senha:\n");
  scanf("%f%*c",&senha);

  if(senha==4531){
      printf("Acesso autorizado");
  }else{
      printf("Acesso negado.");
  }return 0;
}