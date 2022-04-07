// Solicitar a idade de 5 pessoas e imprimir a média de idade lidas.
#include <stdio.h> <math.h>
int main ()
{
    int i, idade;
    float media, soma;
    soma = 0;

    for (i = 0; i < 5; i++){
        printf("Digite a idade da pessoa %i:\n", i+1);
        scanf("%i%*c", &idade);
        soma = soma + idade;
    }

    media = soma/5;

    printf("Media das idades: %.f\n", media);

    return 0;   
}