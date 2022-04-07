#include <stdio.h>

int main ()
{
int n1, n2;

printf("Digite o primeiro numero\n");
scanf("%d",&n1);
printf("Digite o segundo numero\n");
scanf("%d",&n2);

if (n1 == n2)
printf("Os dois numeros sao iguais");

else if (n1 < n2)
printf("O primeiro numero e menor que o segundo");

else 
printf("O segundo numero e menor que o primeiro");

return 0;

}