/* 2. Leia um conjunto de notas com vetores, cuja quantidade seja determinada pelo usuário. Calcule a média de todas elas.
Exiba o conjunto das notas maiores do que a média calculada. Em seguida, de forma agrupada, exiba o outro conjunto de notas 
(menores que a média).*/

#include <stdio.h>
#include <math.h>
int main ()
{
    int i, qtd;
    float media, soma;
    soma = 0;

    printf("Quantas notas iremos ler?\n");
    scanf("%d%*c",&qtd);

    int notas[qtd];

    for (i = 0; i < qtd; i++){
        printf("Digite a nota de posicao %d:\n", i+1);
        scanf("%d",&notas[i]);
        soma = soma + notas[i];
    }

    media = soma/qtd;
    printf("\nA media das notas sera de: %.f\n", media);

    printf("\nNotas acima da media:\n");
    for (i = 0; i < qtd; i++){
        if(notas[i] > media){
            printf("%d\n", notas[i]);
        }
    }
    printf("Notas abaixo da media:\n");
    for (i = 0; i < qtd; i++){
        if(notas[i] < media){
            printf("%d\n", notas[i]);
        }
    }
    return 0;
}
