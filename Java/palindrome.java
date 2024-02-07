import java.util.Scanner;
public class palindrome {
    public static void main(String args[])
    {
        Scanner myObj=new Scanner(System.in);
        int num,rev=0,rem,temp;
        System.out.println("enter the num:");
        num=Integer.parseInt(myObj.nextLine());
        temp=num;
        while(num!=0)
        {
            rem=num%10;
            rev=rev*10+rem;
            num/=10;
        }
        if(temp==rev)
        System.out.println(temp+" is palindrome");
        else
        System.out.println(temp+" is not palindrome");
    }
}
