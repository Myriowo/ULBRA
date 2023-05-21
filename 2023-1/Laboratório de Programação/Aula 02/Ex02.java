public class Ex02 {
    public static void main(String[] args){
         System.out.println("1. Imprima todos os números inteiros de 10 a 25 utilizando uma estrutura de repetição.");

         for (int i = 10; i <= 25; i++){
            System.out.println(i + " ");
         }
         System.out.println();
         

         System.out.println("2. Imprima a soma dos números de 1 a 100, pulando de dois em dois (1, 3, 5, 7, etc.).");

         int soma = 0;
         for (int i = 1; i <= 100; i += 2){
            soma += i;
         }
         System.out.println("A soma dos números de 1 a 100, pulando de dois em dois é de: " + soma);

         System.out.println();

         System.out.println("3. Começando em 0, imprima os números seguintes, enquanto a soma dos números já impressos for menor que 100.");

         int num = 0;
         int soma2 = 0;
         while (soma2 < 100){
            System.out.print(num + " ");
            soma2 += num;
            num++;
         }
         System.out.println();

         System.out.println();
         
         System.out.println("4. Imprima a tabuada do 9 (até o décimo valor).");

         for (int i = 1; i <= 10; i++){
            System.out.println("9 x " + i + " = " + 9 * i);
         }
    }
}
