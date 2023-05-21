public class Main {
    public static void main(String[] args){
    Produto camisa = new Produto();
    camisa.setNome("Gola Polo");
    camisa.setPreco(99.99);
    camisa.setQtd(200);

    Produto calca = new Produto();
    calca.setNome("Jeans");
    calca.setPreco(301);
    calca.setQtd(100);

    Produto tenis = new Produto();
    tenis.setNome("AirNaldo");
    tenis.setPreco(900);
    tenis.setQtd(1);

    Loja loja1 = new Loja();
    loja1.adicionarProduto(camisa);
    loja1.adicionarProduto(calca);
    loja1.adicionarProduto(tenis);

        System.out.println("===========================================================");
    loja1.listarProdutos();
        System.out.println("===========================================================");
    loja1.removerProduto(calca);

    loja1.listarProdutos();
        System.out.println("===========================================================");
    loja1.venderProduto(tenis, 1);

    loja1.listarProdutos();
        System.out.println("===========================================================");
    loja1.adicionarEstoque(tenis, 50);

    loja1.listarProdutos();
        System.out.println("===========================================================");
    }
}