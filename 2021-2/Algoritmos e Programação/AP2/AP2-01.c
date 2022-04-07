#include <stdio.h>
#include <string.h>

int main ()
{
    int opc, tamanho, i, j;
    char texto[51], texto2[51], aux;
    
    opc = 0;

    while (opc!=3)
    {
    
        printf("\nMenu de Opcoes:\n1.Ordenar\n2.Substituir\n3.Encerrar\nEscolha uma operacao:\n");
        scanf("%d%*c",&opc);

        
        if(opc==1){
            printf("Escreva uma palavra de no maximo 50 caracteres:\n");
            fgets(texto, 51, stdin);
            fflush(stdin); 
            strupr(texto);
            tamanho = strlen (texto);
            for(i = 0; i < tamanho; i++){ 
                printf("\n%c",texto[i]);

                for ( i = 0; i < tamanho - 1; i++){   
                    for (j = i + 1; j < tamanho; j++){
                        if (texto[i] > texto[j]){
                            aux = texto[i];
                            texto[i] = texto[j];
                            texto[j] = aux;
                        }
                    }
                }        
            }
            puts(texto);     

        }else if(opc==2){
            printf("Escreva uma frase com o maximo de 50 caracteres:\n");
            fgets(texto, 51, stdin);
            fflush(stdin); 
            strupr(texto);
            tamanho = strlen (texto);
            for (i = 0; i < tamanho; i++){
                if(texto[i] == ' '){
                    texto[i] = '_';
                }
            }
            j = 0;
            for (i = tamanho - 2; i >= 0; i--){
                texto2[j] = texto[i];
                j++;
            }
            printf("\n");
            puts(texto2);
            

        }else if(opc==3){
            exit (0);

        }else{
            printf("\nOpcao invalida\n");

        }
    }
    return 0;
 
}





