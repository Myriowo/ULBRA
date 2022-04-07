#include <stdio.h>
int main ()
{
    float salario, salariof, aumento;

    printf("Digite seu salario atual:\n");
    scanf("%f%*c",&salario);

    if (salario<=300.00){
        aumento=salario*0.15;
        salariof=salario+aumento;
        printf("Seu aumento sera de: %.2f\nSeu novo salario sera de: %.2f",aumento, salariof);

    }else if (salario>300.00 && salario<600.00){
        aumento=salario*0.10;
        salariof=salario+aumento;
        printf("Seu aumento sera de: %.2f\nSeu novo salario sera de: %.2f", aumento, salariof);

    }if (salario>=600.00 && salario<=900.00){
        aumento=salario*0.05;
        salariof=salario+aumento;
        printf("Seu aumento sera de: %.2f\nSeu novo salario sera de: %.2f",aumento, salariof);

    }else if (salario>900.00){
        printf("Desculpe, voce nao tem direito ao aumento :(");
    }

return 0;
}