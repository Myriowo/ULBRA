#include <stdio.h>
int main ()
{
  int idade, categoria;

  printf("Digite sua idade:\n");
  scanf("%d%*c",&idade);

  if (idade>=5 && idade<=7){
      printf("Categoria: Infantil");

  }else if (idade>=8 && idade<=10){
      printf("Categoria: Juvenil");

  }if (idade>=11 && idade<=15){
      printf("Categoria: Adolescente");

  }else if (idade>=16 && idade<=30){
      printf("Categoria: Adulto");

  }if (idade>30){
      printf("Categoria: Senior");

  }else if (idade<5){
      printf("Idade inferior a permitida.");

  }return 0;
}