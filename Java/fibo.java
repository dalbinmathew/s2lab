import java.util.Scanner;

public class fibo {
    public static void main(String args[])
    {
        Scanner myObj = new Scanner(System.in);
        int range;
        System.out.println("Enter range"); 
        range = Integer.parseInt(myObj.nextLine());
        int a=0,b=1,next=0;
        int i;
        System.out.println(a+"\n"+b);
        for(i=3;i<=range;i++)
        {
            next=a+b;
            a=b;
            b=next;
            System.out.println(next);
        }
    }
}
