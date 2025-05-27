import java.util.Scanner;

public class Ex04 {
    public static void main(String[] args) {
        Scanner IB = new Scanner(System.in);

        System.out.println("Digite um número inteiro positivo: ");
        int num = IB.nextInt();

        System.out.println("Números pares entre 1 e " + num + ":");

        int i = 2;

        while (i <= num) {
            System.out.println(i);
            i += 2;
        }
    }
}