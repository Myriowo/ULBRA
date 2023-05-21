public class Ex01Media {
    public static void main(String[] args) {
        double nota1 = 8.5;
        double nota2 = 7.5;
        double nota3 = 6.0;
        
        int peso1 = 3;
        int peso2 = 2;
        int peso3 = 5;
        
        System.out.println("01. Um aluno tirou notas 8.5, 7.5 e 6.0 em provas que tinham peso 3, 2 e 5, respectivamente. Escreva um programa que imprima a média do aluno:");

        double media = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);
        
        System.out.println();
        
        System.out.println("A média do aluno é: " + media);
    }
}
