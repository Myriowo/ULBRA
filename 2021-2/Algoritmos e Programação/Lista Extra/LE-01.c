#include <stdio.h>

int main(){
    int num, soma, i;
    soma = 0; //soma precisa ter valor mesmo que 0.

    printf("digite o valor\n");
    scanf("%d%*c", &num);

    for(i=1; i<=num; i++){ //++ significa que vai adicionar +1
        printf("valor da soma %d\n", soma);
        soma = soma + i;
    }

    printf("%d", soma);


    return 0;
}
