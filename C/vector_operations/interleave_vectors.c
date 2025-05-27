/*1. Escreva um programa que leia dois vetores com 10 elementos cada e gere um terceiro vetor de 20 elementos, cujos valores deverão ser compostos pelos elementos intercalados dos dois outros vetores.
Ao final o programa deverá mostrar os dois vetores originais e o terceiro vetor com os valores intercalados.*/

#include <stdio.h>

int main(){
    int i;
    int j=0;
    int v1[10], v2[10], v3[20];

    printf("Digite os valores de V1: ");
    for(i = 0; i < 10; i++){
        scanf("%i%*c", &v1[i]);
    } 

    printf("Digite os valores de V2: ");
    for(i = 0; i < 10; i++){
        scanf("%i%*c", &v2[i]);
    } 

    for(i = 0; i < 10; i++){
        v3[j] = v1[i];
        j++;
        v3[j] = v2[i];
        j++;
    }

    for(i = 0; i < 10; i++){
        printf("exibir vetor 1 = %i\n", v1[i]);
    }

    for(i = 0; i < 10; i++){
        printf("exibir vetor 2 = %i\n", v2[i]);
    }

    for(i = 0; i < 20; i++){
        printf("exibir vetor 3 = %i\n", v3[i]);
    }


    return 0;
