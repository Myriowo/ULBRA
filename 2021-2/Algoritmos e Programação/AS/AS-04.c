/* 3. Leia um conjunto de alunos, cada um com um nome e a nota armazenados em um vetor de 10.
Em seguida, exiba o nome dos alunos que possuem nota maior do que a média da turma.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main ()
{
    int   notas[10], i;
    char  alunos[10][10]; 
    float soma, media;
    soma = 0;

    for (i = 0; i < 10; i++){
        printf("Digite o NOME do aluno %i:\n", i+1);
        gets(alunos[i]);
        fflush(stdin);
        printf("Digite a NOTA do aluno %i:\n", i+1);
        scanf("%d%*c",&notas[i]);

        soma = soma + notas[i];
    }
    media = soma/10;

    for (i = 0; i < 10; i++){
        if (notas[i] > media){
            printf("%s possui nota maior que a media da turma.\n", alunos[i]);
        }
    }
    return 0;
}