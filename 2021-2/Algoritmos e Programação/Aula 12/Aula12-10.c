#include <stdio.h>
int main ()
{
    float custo, dist, imposto, valor;

    printf("Digite o preco de fabrica do carro:\n");
    scanf("%f%*c",&custo);

    if (custo<=12000.00){
        valor=custo*1.05;
        printf("O valor total sera de: %.2f\n",valor);

    }else if (custo>12000.00 && custo<=25000.00){
        dist=custo*0.10;
        imposto=custo*0.15;
        valor=custo+dist+imposto;
        printf("O valor total sera de: %.2f\n",valor);

    }if (custo>25000.00){
        dist=custo*0.15;
        imposto=custo*0.20;
        valor=custo+dist+imposto;
        printf("O valor total sera de: %.2f\n",valor);
    }

    return 0;
}