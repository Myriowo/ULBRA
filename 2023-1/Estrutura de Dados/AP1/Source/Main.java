package Source;

public class Main {
    public static void main(String[] args) throws Exception {

        int[][] matriz = new int[200][200]; // Esta linha cria uma matriz de inteiros com 200 linhas e 200 colunas
        int[][] pattern = new int[3][3];
        int count = 0;

        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                matriz[i][j] = (int) Math.round(Math.random()); // este loop preenche cada posição da matriz com um número aleatório 0 ou 1
                System.out.print(matriz[i][j] + ".");
            }
            System.out.println();
        }

        // * Formato Padrão a ser buscado *//

        pattern[0][0] = 1;
        pattern[0][1] = 1;
        pattern[0][2] = 1;
        pattern[1][0] = 1;
        pattern[1][1] = 0;
        pattern[1][2] = 0;

        // * Formato Padrão a ser buscado *//

        System.out.println();

        for (int i = 0; i < pattern.length; i++) {
            for (int j = 0; j < pattern[i].length; j++) {
                System.out.print(" " + pattern[i][j] + " "); // esta linha imprime o padrão na saída padrão, separados por um espaço em branco
            }
            System.out.println();
        }

        int rows = matriz.length;
        int cols = matriz[0].length;
        int patternRows = pattern.length;
        int patternCols = pattern[0].length;

        Tempo.start();
        for (int i = 0; i <= rows - patternRows; i++) {
            for (int j = 0; j <= cols - patternCols; j++) {
                boolean patternFound = true;
                for (int k = 0; k < patternRows; k++) {
                    for (int l = 0; l < patternCols; l++) {
                        if (matriz[i + k][j + l] != pattern[k][l]) {
                            patternFound = false;
                            break;
                        }
                    }
                    if (!patternFound) {
                        break;
                    }
                }
                if (patternFound) {
                    count++;
                }
            }
        }
        Tempo.stop();

        System.out.println("O número de vezes que a matriz foi encontrada: " + count);

    }

}
