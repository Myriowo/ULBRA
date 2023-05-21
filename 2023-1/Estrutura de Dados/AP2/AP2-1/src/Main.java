public class Main {
    public static void main(String[] args) {
    ListaDe lista = new ListaDe();


    // Insira os valores [5, 8, 3, 2] no início da lista, nesta ordem
        System.out.println("Insira os valores [5, 8, 3, 2] no início da lista, nesta ordem:");
        lista.inserirInicio(5);
        lista.inserirInicio(8);
        lista.inserirInicio(3);
        lista.inserirInicio(2);
        lista.exibirLista();

    // Insira o valor 7 no fim da lista
        System.out.println("Insira o valor 7 no fim da lista:");
        lista.inserirFinal(7);
        lista.exibirLista();

    // Remova o elemento que está no início da lista
        System.out.println("Remova o elemento que está no início da lista:");
        lista.removerInicio();
        lista.exibirLista();

    //Obtenha o valor do elemento que está na posição 2 da lista
        System.out.println("Obtenha o valor do elemento que está na posição 2 da lista:");

        int valor = lista.valorN(2);
        System.out.println("o Valor na posição 2 é de: " + valor);
        System.out.println();

    //Remova o elemento que está no fim da lista
        System.out.println("Remova o elemento que está no fim da lista:");
        lista.removerFinal();
        lista.exibirLista();

    //Imprima a lista completa
        System.out.println("Imprima a lista completa:");
        lista.exibirLista();

    //Imprima a lista completa de trás pra frente
        System.out.println("Imprima a lista completa de trás pra frente:");
        lista.exibirListaRev();
    }
}