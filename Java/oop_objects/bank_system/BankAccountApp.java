import java.util.Scanner;
public class BankAccount{
    private String accNum;
    private double balance;
    private Person holder;

    public BankAccount(String accNum, double balance, Person holder){
        this.accNum = accNum;
        this.balance = balance;
        this.holder = holder;
    }

    public void deposit(double amount){
        balance += amount;
        System.out.println("$" + amount + " has been deposited to your account. Your new balance is: $" + balance);
    }

    public void withdrawal(double amount){
        if (balance >= amount){
            balance -= amount;
            System.out.println("$" + amount + " has been withdrawn from your account. Your new balance is: $" + balance);
        }else{
            System.out.println("Insufficient funds. Cannot withdraw $" + amount + ". Current balance is: $" + balance);
        }
    }

    public double getBalance(){
        return balance;
    }

    public static void main(String[] args) {
        Scanner Sc = new Scanner(System.in);

        System.out.println("Enter account number:");
        String accNum = Sc.nextLine();

        System.out.println("Enter account holder name: ");
        String holderName = Sc.nextLine();

        Person holder = new Person(holderName);

        System.out.println("Enter initial balance: $");
        double balance = Sc.nextDouble();

        BankAccount account = new BankAccount(accNum, balance, holder);

        System.out.println("Account created successfully. Holder: " + holder.getName() + ", Account number: " + accNum + ", Balance: $" + balance);

        boolean exit = false;

        while (!exit){
            System.out.println("\nWhat would you like to do? \n1 - Deposit \n2 - Withdrawal \n3 - Check balance \n4 - Exit");
            int choice = Sc.nextInt();

            switch (choice){
                case 1:
                    System.out.println("Enter deposit amount: $");
                    double depositAmount = Sc.nextDouble();
                    account.deposit(depositAmount);
                    break;

                case 2:
                    System.out.println("Enter withdrawal amount: $");
                    double withdrawalAmount = Sc.nextDouble();
                    account.withdrawal(withdrawalAmount);
                    break;

                case 3:
                    System.out.println("Current balance: $" + account.getBalance());
                    break;

                case 4:
                    exit = true;
                    break;

                default:
                    System.out.println("Invalid choice.");
                    break;
            }
        }
    }
}