#include <stdio.h>

int main(){
    int idade;
    float media, soma;
    soma = 0;

    for(int i = 0; i < 5; i++){
        printf("digite a idade da pessoa %i:\n", i+1);
        scanf("%i%*c", &idade);
        soma = soma + idade;
    }

    media = soma/5;

    printf("media das idades %.2f\n", media);

    return 0;
}