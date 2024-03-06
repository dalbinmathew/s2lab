import java.util.Scanner;
public class complex {
    public static void main(String args[])
    {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter  the values of first Complex Number(i and j value):");
        int i = scanner.nextInt();
        int j = scanner.nextInt();
        System.out.println("Enter  the values of first Complex Number(i and j value):");
        int m = scanner.nextInt();
        int n = scanner.nextInt();

        System.out.println("sum of complex numbers:"+(i+m)+" + "+(j+n)+"i");
        
    }
}
