import java.util.Scanner;
public class prime {
    public static void main(String args[])
    {
        Scanner myObj =new Scanner(System.in);
        int num;
        System.out.println("enter the number:");
        num=Integer.parseInt(myObj.nextLine());
        if(num==0)
        System.out.println("number is zero");
        if(num==1)
        System.out.println("1 is prime");
        for(int i=2;i<=num;i++)
        {
            if(num%i==0)
            {
                System.out.println(num+" is not prime");
                break;
            }
            else
            System.out.println(num+" is prime");
            break;
        }
    }
}
