public class Gincana {
    private String nomeGincana;
    private int totalEstudantes;
    private int pontuacaoMaxima;
    private Estudante estudanteVencedor;

    public String getNomeGincana(){
        return this.nomeGincana;
    }
    public void setNomeGincana(String nomeGincana){
        this.nomeGincana = nomeGincana;
    }
    public int getTotalEstudantes(){
        return this.totalEstudantes;
    }
    public void setTotalEstudantes(int totalEstudantes){
        this.totalEstudantes = totalEstudantes;
    }
    public int getPontuacaoMaxima(){
        return this.pontuacaoMaxima;
    }
    public void setPontuacaoMaxima(int pontuacaoMaxima){
        this.pontuacaoMaxima = pontuacaoMaxima;
    }
    public Estudante getEstudanteVencedor(){
        return this.estudanteVencedor;
    }

    public void setEstudanteVencedor(Estudante estudanteVencedor) {
        this.estudanteVencedor = estudanteVencedor;
    }

    public void adicionarEstudante(Estudante estudante){
        totalEstudantes++;
        if (estudanteVencedor == null || estudante.getPontos() > estudanteVencedor.getPontos()){
            estudanteVencedor = estudante;
            pontuacaoMaxima = estudante.getPontos();
        }
    }
    public void exibirVencedor(){
        System.out.println("Estudante vencedor: " + estudanteVencedor.getNome());
        System.out.println("Pontuação: " + estudanteVencedor.getPontos());
    }
}
