public class Ex03Fibonacci {
    public static void main(String[] args) {
        int n1 = 0, n2 = 1, n3, i, count = 15;

        System.out.println("03. Imprima os 15 primeiros números da série de Fibonacci.");
        
        System.out.println();

        System.out.println(n1 + " " + n2);

        for (i = 2; i < count; i++){
            n3 = n1 + n2 + i;System.out.println(" " + n3);
            n1 = n2;
            n2 = n3;
        }
    }
}
