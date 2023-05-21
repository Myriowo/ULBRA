import java.util.Scanner;

public class Ex03 {
    public static void main(String[] args) {
        Scanner TB = new Scanner(System.in);

        System.out.println("Digite um número inteiro positivo: ");
        int num = TB.nextInt();

        System.out.println("Tabuada do número " + num + ":");

        for (int i = 1; i <= 10; i++){
            int result = num * i;
            System.out.println(num + " x " + i + " = " + result);
        }
    }
}
