#include <stdio.h>
int main ()
{
    float salario, percent; 

    printf("Digite seu salario atual:\n");
    scanf("%f%*c",&salario);
    
    if (salario<300.00){
      percent = salario*1.35;
      printf("Seu novo salario sera: %.2f",percent);
    }else{
      percent = salario*1.15;
      printf("Seu novo salario sera: %.2f",percent);
    }
    
   return 0; 
}