// Solicitar a idade de um número indefinido de pessoas e imprimir a média de idade lidas. 
// O programa se encerra quando a média de idade for superior a 20 anos.

#include <stdio.h> <math.h>
int main ()
{
    int i, idade;
    float media, soma;

    i = 0;
    soma = 0;

    do{
        i++;
        printf("Digite a idade da pessoa %i:\n", i);
        scanf("%d%*c", &idade);

        soma = soma + idade;
        media = soma/i;
    
    } while (media < 20);

        printf("A media de idade: %.f", media);

    return 0;
}