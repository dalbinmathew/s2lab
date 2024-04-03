import java.util.Scanner;
public class stringmanipulations {
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string:");
        String s = sc.nextLine();


        System.out.println("Lower case: "+s.toLowerCase());
        System.out.println("Upper case: "+s.toUpperCase());
        System.out.println("Length: "+s.length());
        System.out.println("substring(2): "+s.substring(2));
        System.out.println("substring(2,5): "+s.substring(2,5));
        System.out.println("trim: "+s.trim());
        System.out.println("indexOf('o'): "+s.indexOf('o'));
        System.out.println("indexOf('o',10): "+s.indexOf('o',10));
        System.out.println("concat('CR7'): "+s.concat("CR7"));
    }
}
