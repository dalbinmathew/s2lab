import java.util.Scanner;

class wrongException extends RuntimeException {
    wrongException(String s) {
        super(s);
    }
}

public class userpass {
    public static void main(String[] args) {
        String usr = "admin";
        String pass = "admin";
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter username: ");
        String reusr = sc.nextLine();
        System.out.println("Enter password: ");
        String repass = sc.nextLine();
        if (!usr.equals(reusr) || !pass.equals(repass)) {
            throw new wrongException("Incorrect username or password");
        } else {
            System.out.println("Welcome to your profile");
        }
    }
}

