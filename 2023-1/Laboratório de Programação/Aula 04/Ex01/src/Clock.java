import java.util.Scanner;
public class Clock{

    private Pointer pointerHour;
    private Pointer pointerMinute;
    private Pointer pointerSecond;

    public Clock(){
        this.pointerHour = new Pointer();
        this.pointerMinute = new Pointer();
        this.pointerSecond = new Pointer();
    }

    public void setClock(int Hour, int minute, int second){
        this.pointerHour.setPosition(Hour % 12);
        this.pointerMinute.setPosition(minute % 60);
        this.pointerSecond.setPosition(second % 60);
    }

    public int readHour(){
        return this.pointerHour.getPosition();
    }

    public int readMinute(){
        return this.pointerMinute.getPosition();
    }

    public int readSecond(){
        return this.pointerSecond.getPosition();
    }

    public static void main(String[] args) {
        Scanner Hour = new Scanner(System.in);
        Scanner Min = new Scanner(System.in);
        Scanner Sec = new Scanner(System.in);

        Clock clk = new Clock();

        System.out.println("What is the actual hour? ");
        int H = Hour.nextInt();

        System.out.println("What are the actual minutes? ");
        int M = Min.nextInt();

        System.out.println("What are the actual seconds? ");
        int S = Sec.nextInt();

        clk.setClock(H,M,S);

        System.out.println("Hour: " + clk.readHour());
        System.out.println("Minutes: " + clk.readMinute());
        System.out.println("Seconds: " + clk.readSecond());
    }
}
