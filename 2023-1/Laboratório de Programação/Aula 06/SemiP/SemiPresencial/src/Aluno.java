public class Aluno{
    Prova p1;
    Prova p2;

    public double calcMedia(){
        double media = (p1.calcNotaTotal() + p2.calcNotaTotal()) / 2;
        return media;
    }
}
