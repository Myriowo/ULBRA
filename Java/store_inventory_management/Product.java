public class Produto {
    private String nome;
    private double preco;
    private int qtd;

    public int getQtd(){
        return this.qtd;
    }
    public String getNome(){
        return this.nome;
    }
    public double getPreco(){
        return this.preco;
    }
    public void setQtd(int qtd){
        if (qtd < 0){
            System.out.println("Quantidade não pode ser menor que zero.");
        }else{
            this.qtd = qtd;
        }
    }
    public void setPreco(double preco){
        this.preco = preco;
    }
    public void setNome(String nome){
        this.nome = nome;
    }

}
