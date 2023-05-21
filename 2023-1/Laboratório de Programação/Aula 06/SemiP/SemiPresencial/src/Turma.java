public class Turma{
    Aluno a1;
    Aluno a2;
    Aluno a3;

    public double TcalcMedia(){
        double tMedia = (a1.calcMedia() + a2.calcMedia() + a3.calcMedia()) / 3;
        return tMedia;
    }
}