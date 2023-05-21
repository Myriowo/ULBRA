public class Main {
    public static void main(String[] args) {
    Estudante estudante1 = new Estudante();
    estudante1.setNome("Vagner");
    estudante1.setIdade(23);
    estudante1.setPontos(5);

    Estudante estudante2 = new Estudante();
    estudante2.setNome("Fátima");
    estudante2.setIdade(21);
    estudante2.setPontos(8);

    Estudante estudante3 = new Estudante();
    estudante3.setNome("Giovani");
    estudante3.setIdade(18);
    estudante3.setPontos(7);

    Gincana gincana = new Gincana();
    gincana.setNomeGincana("Gincana Bacana");
    gincana.adicionarEstudante(estudante1);
    gincana.adicionarEstudante(estudante2);
    gincana.adicionarEstudante(estudante3);

    gincana.exibirVencedor();

    }
}