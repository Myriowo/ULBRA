//Ler um número do teclado e imprimir todos os números de 1 até o número lido. 
//Imprimir a soma dos números.

#include <stdio.h> <math.h>
int main ()
{
   int i, j, num, soma;
   soma = 0;

   printf("Digite um numero:\n");
   scanf("%d%*c",&num);

   for (i = 1; i <= num; i++){
    printf("\n%d\n", i);
     soma = soma + i;
    printf("\n A soma dos numeros resulta em: %d\n", soma);   
}
   return 0;

}
