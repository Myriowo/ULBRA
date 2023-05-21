import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        Scanner AB =  new Scanner(System.in);

        System.out.println("Digite um número inteiro positivo: ");
        int num = AB.nextInt();

        boolean Primo = true;

        if (num < 2){
            Primo = false;
        }else{
            for (int i = 2; i <= Math.sqrt(num); i++){
                if (num % i == 0){
                    Primo = false;
                    break;
                }
            }
        }

        if (Primo){
            System.out.println(num +  " é um número primo.");

        }else{
            System.out.println(num + " não é um número primo.");
        }
    }
}
