import java.util.Scanner;

class negativeException extends RuntimeException {
    negativeException(String s) {
        super(s);
    }
}

public class average {
    public static void main(String[] args) {
        int sum=0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Limit:");
        int lim = sc.nextInt();
        for(int i=1;i<lim+1;i++)
        {
            
            System.out.println("Enter value "+i+":");
            int val = sc.nextInt();
            if (val < 0)
            {
                throw new negativeException("negative numbers are not allowed");
            }
            else{
                sum += val;
            }
             
        }
        System.out.println("Average:"+sum/lim);
    }
}
