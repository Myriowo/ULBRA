#include <stdio.h> 
int main ()
{
    float op, salario1, aumento, salario2;
    
    printf("Voce recebe menos que R$500.00?\n");
    printf("1. Sim\n");
    printf("2. Nao\n");
    scanf("%f%*c",&op);

    if (op==1){
        printf("\nDigite seu salario atual:\n");
        scanf("%f%*c",&salario1);
    if (salario1>=500.00){
        printf("Desculpe, voce nao tem direito ao aumento."); 
    }else if (salario1<500.00){  
           aumento = salario1*0.30;
        printf("\nO total do aumento sera de: %.2f",aumento);
           salario2 = salario1+aumento;
        printf("\nSeu novo salario sera: %.2f",salario2);
    }
    }else if (op==2){
        printf("Desculpe, voce nao tem direito ao aumento.");
    }else{ 
        printf("Operacao invalida.");
    }
    return 0;
}