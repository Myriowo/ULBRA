import java.util.Scanner;

public class Ex05dataValida {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Digite o dia: ");
        int dia = input.nextInt();

        System.out.println("Digite o mês: ");
        int mes = input.nextInt();

        System.out.println("Digite o ano: ");
        int ano = input.nextInt();

        boolean dataValida = true;

        if (mes < 1 || mes > 12){
            dataValida = false;
        }
        else if (dia < 1 || dia > 31){
            dataValida = false;
        }
        else if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia == 31){
            dataValida = false;
        }
        else if (mes == 2){
            if ((ano % 4 != 0 || ano % 100 == 0 && ano % 400 != 0)){
                if (dia > 28){
                    dataValida = false;
                }
            }
            else{
                if (dia > 29){
                    dataValida = false;
                }
            }
        }
    }
}
