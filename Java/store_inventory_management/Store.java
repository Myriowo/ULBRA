public class Loja {
    private Produto produto1;
    private Produto produto2;
    private Produto produto3;

    public void adicionarProduto(Produto produto){
        if (this.produto1 == null) {
            this.produto1 = produto;
        } else if (this.produto2 == null) {
            this.produto2 = produto;
        } else if (this.produto3 == null) {
            this.produto3 = produto;
        } else {
            System.out.println("Todos os produtos foram preenchidos.");
        }
    }

    public void removerProduto(Produto produto){
        if (this.produto1 == produto){
            this.produto1 = null;
        }else if (this.produto2 == produto){
            this.produto2 = null;
        }else if (this.produto3 == produto){
            this.produto3 = null;
        }else{
            System.out.println("Produto não encontrado.");
        }
    }

    public void listarProdutos(){
        if (this.produto1 != null){
            imprimirProduto(this.produto1);
        }
        if (this.produto2 != null){
            imprimirProduto(this.produto2);
        }
        if (this.produto3 != null){
            imprimirProduto(this.produto3);
        }
    }

    private void imprimirProduto(Produto produto){
        System.out.println("Nome do Produto: " + produto.getNome() + " | Preço: " + produto.getPreco() + " | Quantidade: " + produto.getQtd());
    }

    public void venderProduto(Produto produto, int qtd){
        if (this.produto1 == produto){
            if (this.produto1.getQtd() >= qtd){
                int quantidadeProduto = this.produto1.getQtd();
                quantidadeProduto = quantidadeProduto - qtd;
                this.produto1.setQtd(quantidadeProduto);
            }
        }else if (this.produto2 == produto){
            if (this.produto2.getQtd() >= qtd){
                int quantidadeProduto = this.produto2.getQtd();
                quantidadeProduto = quantidadeProduto - qtd;
                this.produto2.setQtd(quantidadeProduto);
            }
        }else if (this.produto3 == produto){
            if (this.produto3.getQtd() >= qtd){
                int quantidadeProduto = this.produto3.getQtd();
                quantidadeProduto = quantidadeProduto - qtd;
                this.produto3.setQtd(quantidadeProduto);
            }
        }else{
            System.out.println("Produto não encontrado.");
        }
    }

    public void adicionarEstoque(Produto produto, int qtd){
        if (this.produto1 == produto){
            this.produto1.setQtd(this.produto1.getQtd() + qtd);
        }else if (this.produto2 == produto){
            this.produto2.setQtd(this.produto2.getQtd() + qtd);
        }else if (this.produto3 == produto){
            this.produto3.setQtd(this.produto3.getQtd() + qtd);
        }
    }
}
