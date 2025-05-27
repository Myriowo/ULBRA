/*2. Escreva um programa que receba do usuário um vetor com 20 valores inteiros e apresente o maior, o menor e suas respectivas posições em que os mesmos foram informados.
Caso existam números iguais mostre a posição da primeira ocorrência.*/

#include <stdio.h>
int main ()
{
    int maior, pMaior, menor, pMenor, i, j, vetor[20];

    for  (i = 0; i < 20; i++){
        printf("Digite o valor da posicao %i do vetor:\n", i+1);
        scanf("%d%*c",&vetor[i]);
    }
    maior = vetor[0];
    menor = vetor[0];

    for (i = 0; i < 20; i++){
        if (maior<=vetor[i]){
            maior = vetor[i];
            pMaior = i;
        }
    for (j = 0; j < 20; j++){
        if (menor>=vetor[j]){
            menor = vetor[j];
            pMenor = j;
            }
        }
    }

    int pos;
    pos = -1;

    for (i = 0; i < 20; i++){
        for (j = i+1; j < 20; j++){
            if (vetor[i] == vetor[j]){
            pos = i;
            break;
            }
        }
            if(pos != -1){
            break;
            }
        }
         
        printf("\nPosicao de num igual: %d\n", pos);      
        printf("Maior elemento: %d\n",maior);
        printf("Posicao do maior elemento: %d\n",pMaior+1);
        printf("Menor elemento: %d\n", menor);
        printf("Posicao do menor elemento: %d\n", pMenor);

    return 0;
}