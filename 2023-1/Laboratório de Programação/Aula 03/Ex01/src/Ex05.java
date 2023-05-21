import java.util.Scanner;

public class Ex05 {
    public static void main(String[] args) {
        Scanner TT = new Scanner(System.in);

        System.out.println("Digite um número inteiro positivo: ");
        int num = TT.nextInt();

        System.out.println("Números ímpares entre 1 e " + num + ":");

        for (int i = 1; i <= num; i += 2){
            System.out.println(i);
        }
    }
}
