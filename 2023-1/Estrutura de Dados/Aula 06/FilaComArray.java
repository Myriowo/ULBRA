public class FilaComArray{
    private int[] fila;
    private int tamanho;
    private int inicio;

    public FilaComArray(int capacidade) {
        fila = new int[capacidade];
        tamanho = 0;
        inicio = 0;
    }

    public void enqueue(int elemento) {
        if (tamanho == fila.length) {
            throw new RuntimeException("Fila cheia");
        }
        int fim = (inicio + tamanho) % fila.length;
        fila[fim] = elemento;
        tamanho++;
    }

    public int dequeue() {
        if (tamanho == 0) {
            throw new RuntimeException("Fila vazia");
        }
        int elemento = fila[inicio];
        inicio = (inicio + 1) % fila.length;
        tamanho--;
        return elemento;
    }

    public int size() {
        return tamanho;
    }

    public boolean isEmpty() {
        return tamanho == 0;
    }

    public boolean isFull() {
        return tamanho == fila.length;
    }
}    
