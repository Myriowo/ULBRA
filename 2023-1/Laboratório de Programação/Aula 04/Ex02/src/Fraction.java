import java.util.Scanner;
public class Fraction {
    private int numerator;
    private int denominator;

    public Fraction(int numerator, int denominator){
        this.numerator = numerator;
        this.denominator = denominator;
    }

    public void setNumerator(int numerator){
        this.numerator = numerator;
    }

    public void setDenominator(int denominator){
        if (denominator == 0){
            throw new IllegalArgumentException("Denominator cannot be 0");
        }
        this.denominator = denominator;
    }

    public int getNumerator(){
        return numerator;
    }

    public int getDenominator(){
        return denominator;
    }

    public Fraction multiply(Fraction other){
        int newNumerator = this.numerator * other.numerator;
        int newDenominator = this.denominator * other.denominator;
        return new Fraction(newNumerator, newDenominator);
    }

    public static void main(String[] args) {
        Scanner FR = new Scanner(System.in);

        System.out.println("Enter the numerator of the first fraction: ");
        int num1 = FR.nextInt();

        System.out.println("Enter the denominator of the first fraction: ");
        int d1 = FR.nextInt();

        System.out.println("Enter the numerator of the second fraction: ");
        int num2 = FR.nextInt();

        System.out.println("Enter the denominator of the second fraction: ");
        int d2 = FR.nextInt();

        Fraction f1 = new Fraction(num1, d1);
        Fraction f2 = new Fraction(num2, d2);

        Fraction result = f1.multiply(f2);

        System.out.println("Result of multiplication: " + result.getNumerator()+ "/" + result.getDenominator());
    }
}