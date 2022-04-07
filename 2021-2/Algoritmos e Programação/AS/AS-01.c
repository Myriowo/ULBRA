#include <stdio.h> 
#include <string.h>

int main ()
{
    int num[6], soma, qtd;
    int i, op;
    soma = 0;
    qtd = 0;

        printf("Precisamos de 6 numeros inteiros!\n");

    for (i = 0; i < 6; i++){
        printf("Digite o numero de posicao %i:\n", i+1);
        scanf("%d%*c",&num[i]);
    }
    
        printf("\nDigite a opcao desejada:\n1. Exibir os numeros pares digitados\n2. Exibir a soma dos numeros pares digitados\n3. Exibir os numeros impares digitados\n4. Exibir a quantidade de numeros impares digitados\n");
        scanf("\n%d%*c",&op);

        switch (op){

        case 1:
            for (i = 0; i < num[i]; i++){
                if (num[i] %2==0){
                    printf("\nNumeros pares digitados:%d", num[i]);
                }        
            }
            break;

        case 2:
            for(i = 0; i <num[i]; i++){
                if (num[i] %2==0){
                    soma = soma + num[i];   
                }
            }
            printf("\nNumeros pares somados:%d", soma);
            break;    
        
        case 3:
            for (i = 0; i < num[i]; i++){
                if (num[i] %2!=0){
                    printf("\nNumeros impares digitados:%d", num[i]);
                }        
            }
            break;

        case 4:
            for (i = 0; i < num[i]; i++){
                if (num[i] %2!=0){
                    qtd++;
                }        
            }
            printf("\nQuantidade de numeros impares digitados:%d", qtd);
            break;
             
        default:
            printf("Opcao invalida");
            break;
        }

        return 0;

}
