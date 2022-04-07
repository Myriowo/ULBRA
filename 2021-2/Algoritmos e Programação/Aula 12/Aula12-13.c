#include <stdio.h>
int main ()
{
    float preco, classif, precof;

    printf("Escreva o preco do produto:\n");
    scanf("%f%*c",&preco);

    if (preco<50.00){
        precof=preco*1.05;
        printf("O novo preco do produto sera de: R$%.2f",precof);

    }else if (preco>=50.00 && preco<100.00){
        precof=preco*1.10;
        printf("O novo preco do produto sera de: R$%.2f",precof);

    }if (preco>100.00){
        precof=preco*1.15;
        printf("O novo preco do produto sera de: R$%.2f",precof);

    }else if (precof<80.00){
        printf("\nA classificacao de valor e: Barato!");
        
    }if (precof>=80.00 && precof<120.00){
        printf("\nA classificacao de valor e: Normal!");

    }else if (precof>120.00 && precof<200.00){
        printf("\nA classificacao de valor e: Caro!");

    }if (precof>200.00){
        printf("\nA classificacao de valor e: Muito caro!");

    }return 0;
}