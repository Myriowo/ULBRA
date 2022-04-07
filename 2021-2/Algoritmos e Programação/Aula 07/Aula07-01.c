#include <stdio.h> 
int main ()
{
float n1, n2, n3, n4, media;

printf("Digite a primeira nota:\n");
scanf("%f*c",&n1);

printf("Digite a segunda nota:\n");
scanf("%f*c",&n2);

printf("Digite a terceira nota:\n");
scanf("%f*c",&n3);

printf("Digite a quarta nota:\n");
scanf("%f*c",&n4);

media = (n1 + n2 + n3 + n4) / 4;

printf("Media: %.1f\n", media);

if (media < 7)
printf("Reprovado");

else if (media >= 7)
printf("Aprovado");

return 0;

}