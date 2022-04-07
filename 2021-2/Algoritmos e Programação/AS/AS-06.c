/* 5. Faça um programa de consulta de telefones em um vetor a partir de um nome informado por uma chave de dados:
leia nomes de pessoas com seus respectivos telefones, sendo a quantidade determinada pelo usuário.
Em seguida, pergunte ao usuário qual o nome que ele deseja consultar o telefone. Após sua resposta, exiba o telefone da pessoa procurada.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main ()
{
    int i, qtd;

    printf("Quantas pessoas vamos cadastrar?\n");
    scanf("%d%*c",&qtd);

    char tel[qtd][20];
    char nomes[qtd][100];
    char busca[100];

    for (i = 0; i < qtd; i++){
        printf("\nQual o nome da pessoa %i?\n", i+1);
        gets(nomes[i]);
        fflush(stdin);
        printf("Qual o telefone da pessoa %i?\n", i+1);
        gets(tel[i]);
        fflush(stdin);
    }

    printf("\nQual a pessoa que deseja consultar o numero?\n");

    for (i = 0; i < qtd; i++){
        puts(nomes[i]);
    }

    gets(busca);

    for (i = 0; i < qtd; i++){
        if (strcmp(busca,nomes[i]) == 0){
            puts(tel[i]);
        }
    }
    return 0;
}