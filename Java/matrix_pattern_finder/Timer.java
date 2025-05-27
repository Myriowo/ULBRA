package Source;

public class Tempo {

    private static long init;
    private static float total = 0;

    public static void start() {
       init = System.currentTimeMillis();
    }

    public static void stop() {
        float ms = System.currentTimeMillis() - init;
        System.out.printf("\nO padrão foi encontrado em %.0f ms\n", (ms));
        total = total + ms;
    }
}
