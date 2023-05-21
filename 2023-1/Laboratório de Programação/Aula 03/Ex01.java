import java.util.Scanner;

public class Ex01{
    public static void main(String[]args){
        Scanner PositiveInt = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter a positive number");

        int userint = PositiveInt.nextInt();
        System.out.println("Age: " + userint);


        int soma = 0;
        int i = 1;

        while (i <= userint){
            soma += i;
            i++;
        }
        System.out.println("A soma dos números naturais até " + userint + " é de: " + soma);
    }
}