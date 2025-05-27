public class LoopExercises {
    public static void main(String[] args) {
        // 1. Numbers from 10 to 25
        for (int i = 10; i <= 25; i++) {
            System.out.print(i + " ");
        }
        System.out.println();

        // 2. Sum of odd numbers from 1 to 100
        int soma = 0;
        for (int i = 1; i <= 100; i += 2) {
            soma += i;
        }
        System.out.println("Soma dos ímpares até 100: " + soma);

        // 3. Print numbers while cumulative sum < 100
        int num = 0, soma2 = 0;
        while (soma2 < 100) {
            System.out.print(num + " ");
            soma2 += num;
            num++;
        }
        System.out.println();

        // 4. Tabuada do 9
        for (int i = 1; i <= 10; i++) {
            System.out.println("9 x " + i + " = " + (9 * i));
        }
    }
}
