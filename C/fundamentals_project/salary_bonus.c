/* 1. Faça um programa que receba a quantidade de funcionários de uma empresa, e para cada funcionário leia o salário do funcionário, 
calcule e mostre o novo salário, acrescido da bonificação e de auxílio escola.

Salário                       |  Bonificação
------------------------------|-------------------
Até R$500,00                  |  5% do salário
Entre R$500,00 e R$1.200,00   |  12% do salário
Acima de R$1.200,00           |  Sem bonificação
------------------------------|-------------------
Salário                       |  Auxílio escola
------------------------------|-------------------
Até R$600,00                  |  R$150,00
Mais de R$600,00              |  R$100,00
*/ 

#include <stdio.h>
#include <math.h>

int main ()
{
    int i, func;
    float salario, salario2, bonus, aux;

    printf("Quantos funcionarios tem na empresa?\n");
    scanf("%d%*c",&func);

    for (i = 0; i < func; i++){
        printf("\nDigite o salario atual do funcionario %i:\n",i+1);
        scanf("%f%*c",&salario);
        
        if (salario < 500){
            bonus = salario * 0.05;
            printf("Valor da bonificacao: R$%.2f\n", bonus);
        }
        else if ((salario >=500) && (salario < 1200)){
            bonus = salario * 0.12;
            printf("Valor da bonificacao: R$%.2f\n", bonus);
        }       
        if (salario <= 600){
            aux = 150;
            printf("Valor do Auxilio Escola: R$%.2f\n", aux);
        }
        else if (salario > 600){
            aux = 100;
            printf("Valor do Auxilio Escola: R$%.2f\n", aux);
        }        
        else{
            aux = 0;
        }
        
        salario2 = salario + bonus + aux;

        printf("O novo valor do salario sera de: R$%.2f\n", salario2);

    }
    return 0;    
}