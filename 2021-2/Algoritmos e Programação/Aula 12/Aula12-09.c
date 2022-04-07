#include <stdio.h>
int main ()
{
    float sal, credito;

   printf("Digite seu salario:\n");
   scanf("%f%*c",&sal);

   if (sal>400.00){
       credito=sal*0.30;
   }else if (sal<=400.00 && sal>300.00){
       credito=sal*0.25;
   }if (sal<=300.00 && sal>200.00){
       credito=sal*0.20;
   }else if (sal<=200.00){
       credito=sal*0.10;
   }
    printf("\nSeu saldo medio e: %.2f",sal);
    printf("\nSeu credito sera de: %.2f",credito);

    return 0;
}