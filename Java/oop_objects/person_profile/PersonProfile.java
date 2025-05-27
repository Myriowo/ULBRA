import java.util.Scanner;
public class Person{

    private String name;
    private int age;
    private double height;

    public Person(){}

    public Person(String name, int age, double height){
        this.name = name;
        this.age = age;
        this.height = height;
    }

    public void setName(String name){
        this.name = name;
    }

    public void setAge(int age){
        this.age = age;
    }

    public void setHeight(double height){
        this.height = height;
    }

    public String getName(){
        return name;
    }

    public int getAge(){
        return age;
    }

    public double getHeight(){
        return height;
    }

    public static void main(String[] args) {
        Scanner Pl = new Scanner(System.in);

        System.out.println("What is the name?");
        String name = Pl.nextLine();

        System.out.println("What is the age?");
        int age = Pl.nextInt();

        System.out.println("What is the height?");
        double height = Pl.nextDouble();

        Person person = new Person(name, age, height);

        System.out.println("Name: " + person.getName());
        System.out.println("Age: " + person.getAge());
        System.out.println("Height: " + person.getHeight());
    }
}