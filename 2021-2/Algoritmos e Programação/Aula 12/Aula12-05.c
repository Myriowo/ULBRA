#include <stdio.h>
int main ()
{
    int n1, n2, op, media, diferenca, produto, divisao;
printf("Digite o primeiro numero\n");
scanf("%d%*c",&n1);
printf("Digite o segundo numero\n");
scanf("%d%*c",&n2);
printf("Menu\n");
printf("1. Media\n");
printf("2. Diferenca\n");
printf("3. Produto\n");
printf("4. Divisao\n");
printf("Escolha a opcao desejada:\n");
scanf("%d",&op);

if (op==1){
    media=n1+n2/2 ;
    printf("A media e: %d",media);
}else if (op==2){
    if(n1>n2){
       diferenca=n1-n2; 
    } else {
       diferenca=n2-n1; 
    }
    printf("A diferenca e: %d",diferenca);
}else if (op==3){
       produto=n1*n2;
    printf("O produto e: %d",produto);   
}else if (op==4){
    if(n2==0){
    printf("Operacao invalida.\n");    
    } 
else {
    divisao=n1/n2;
    printf("A divisao e: %d",divisao); } 

    return 0; 
}
}