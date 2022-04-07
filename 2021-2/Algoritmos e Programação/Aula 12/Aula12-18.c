#include <stdio.h>
int main ()
{
  float idade;

  printf("Digite sua idade:\n");
  scanf("%f%*c",&idade);

  if (idade>=18){
      printf("Voce e maior de idade");
  }else{
      printf("Voce e menor de idade");
  }return 0;
}