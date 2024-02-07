import java.util.Scanner;

public class factorial
{
    public static void main(String args[])
    {
        Scanner myObj=new Scanner(System.in);
        int num;
        System.out.println("enter the number:");
        num=Integer.parseInt(myObj.nextLine());
        int fact=1;
        while(num>0)
        {
            fact=fact*num;
            num--;
        }
        System.out.println("factorial="+fact);
    }
}