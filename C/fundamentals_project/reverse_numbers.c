/* 4. Leia um conjunto de valores inteiros em um vetor de 10 e em seguida exiba-os na ordem inversa
do que foram digitados.*/

#include <stdio.h>
#include <stdlib.h>

int main ()
{
    int i, vetor[10];

    for (i = 0; i < 10; i++){
        printf("Digite o numero de posicao %i:\n", i+1);
        scanf("%d%*c",&vetor[i]);
    }
    printf("A ordem reversa sera:\n");

    for(i = 9;i >= 0; i--){
        printf("%d\n",vetor[i]);
    }
    return 0;
}