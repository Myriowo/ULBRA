public class ConditionalStepperSwitch {
    public static void main(String[] args) {
        int x = 20;
        while (x <= 1000) {
            System.out.print(x + ", ");
            switch (x % 2) {
                case 0 -> x += 5;
                case 1 -> x *= 2;
            }
        }
    }
}
