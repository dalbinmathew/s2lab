import java.util.Scanner;
public class product
{
    int pcode;
    String pname;
    int price;

    public void readdata()
    {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter PCODE:");
        this.pcode=sc.nextInt();
        System.out.println("Enter PNAME:");
        this.pname=sc.next();
        System.out.println("Enter PRICE:");
        this.price=sc.nextInt();

    }
    public static void main(String args[])
    {
        product p1 = new product();
        product p2 = new product();
        product p3 = new product();

        p1.readdata();
        p2.readdata();
        p3.readdata();

        System.out.println("The lowest price is:");
        if (p1.price < p2.price && p1.price < p3.price)
        {
            System.out.println(p1.price);
        }
        else if (p2.price < p1.price && p2.price < p3.price) 
        {
			System.out.println(p2.price);
		} 
        else 
        {
			System.out.println(p3.price);
		}
    }
}