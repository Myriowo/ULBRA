#include <stdio.h> <math.h>
int main ()
{ 
    int n1, n2, op, elevado, q1, q2, c1, c2;
    printf("Digite o primeiro numero:\n");
    scanf("%d%*c",&n1);
    printf("Digite o segundo numero:\n");
    scanf("%d%*c",&n2);
    printf("\nMenu:\n");
    printf("1. O primeiro numero elevado ao segundo numero:\n");
    printf("2. Raiz quadrada de cada um dos numeros:\n");
    printf("3. Raiz cubica de cada um dos numeros:\n");
    printf("Escolha sua opcao\n");
    scanf("%d",&op);

    if (op==1){
       elevado = pow(n1,n2);
    printf("O resultado e: %d",elevado);    
   }else if (op==2){
       q1 = sqrt(n1);
       q2 = sqrt(n2);
    printf("Os resultados sao: %d e %d\n",q1,q2);
   }if (op==3){
       c1 = pow(n1,1/3.);
       c2 = pow(n2,1/3.);
    printf("Os resultados sao: %d e %d\n",c1,c2);   
   }else 
    printf("Opcao invalida\n");
    
   return 0;
}