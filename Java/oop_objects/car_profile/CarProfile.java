import java.util.Scanner;
public class Car{
    private String brand;
    private String model;
    private int year;

    public Car(String brand, String model, int year){
        this.brand = brand;
        this.model = model;
        this.year = year;
    }

    public void setBrand(String brand){
        this.brand = brand;
    }

    public void setModel(String model){
        this.model = model;
    }

    public void setYear(int year){
        this.year = year;
    }

    public String getBrand(){
        return brand;
    }

    public String getModel(){
        return model;
    }

    public int getYear(){
        return year;
    }

    public static void main(String[] args) {
        Scanner CR = new Scanner(System.in);

        System.out.println("What is the brand?");
        String brand = CR.nextLine();

        System.out.println("What is the model?");
        String model = CR.nextLine();

        System.out.println("What is the year of the car?");
        int year = CR.nextInt();

        Car car = new Car(brand, model, year);

        System.out.println("Car brand: " + car.getBrand());
        System.out.println("Car model: " + car.getModel());
        System.out.println("Car year: " + car.getYear());
    }
}