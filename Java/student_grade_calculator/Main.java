public class Main{
    public static void main(String[] args) {
    Turma turma = new Turma();
    Aluno aluno1 = new Aluno();
    Aluno aluno2 = new Aluno();
    Aluno aluno3 = new Aluno();

    turma.a1 = aluno1;
    turma.a2 = aluno2;
    turma.a3 = aluno3;

    Prova a1prova1 = new Prova();
    a1prova1.nota1 = 4;
    a1prova1.nota2 = 2.5;
    aluno1.p1 = a1prova1;

    Prova a1prova2 = new Prova();
    a1prova2.nota1 = 1;
    a1prova2.nota2 = 7;
    aluno1.p2 = a1prova2;

    Prova a2prova1 = new Prova();
    a2prova1.nota1 = 6.5;
    a2prova1.nota2 = 3.5;
    aluno2.p1 = a2prova1;

    Prova a2prova2 = new Prova();
    a2prova2.nota1 = 0;
    a2prova2.nota2 = 3;
    aluno2.p2 = a2prova2;

    Prova a3prova1 = new Prova();
    a3prova1.nota1 = 5;
    a3prova1.nota2 = 4;
    aluno3.p1 = a3prova1;

    Prova a3prova2 = new Prova();
    a3prova2.nota1 = 6;
    a3prova2.nota2 = 1.5;
    aluno3.p2 = a3prova2;

    System.out.println("A média da turma é de: " + turma.TcalcMedia());
    System.out.println("A média do Aluno 1 é de: " + aluno1.calcMedia());
    System.out.println("A média do Aluno 2 é de: " + aluno2.calcMedia());
    System.out.println("A média do Aluno 3 é de: " + aluno3.calcMedia());
    }
}
