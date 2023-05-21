public class Estudante {
    private String nome;
    private int matricula;
    private String curso;

    public Estudante(String nome, int matricula, String curso){
        this.nome = nome;
        this.matricula = matricula;
        this.curso = curso;
    }
    public Estudante(String nome, int matricula){
        this.nome = nome;
        this.matricula = matricula;
        this.curso = ""
    }
}
