import java.util.Scanner;

public class searchelement {
        public static void main(String args[]){   
            boolean flag = false;
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of rows: ");
        int rows = scanner.nextInt();

        System.out.println("Enter the number of columns: ");
        int columns = scanner.nextInt();

        int[][] a = new int[rows][columns];

        System.out.println("Enter the elements of matrix: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                a[i][j] = scanner.nextInt();
            }
        }
    
              
        System.out.println("Enter the elements to search: ");
        int x = scanner.nextInt();
          
        
        for(int i=0;i<columns;i++){    
            for(int j=0;j<rows;j++){    
                if(a[i][j] == x){    
                    flag = true;    
                    break;  
                } 
            }       
            }  

            if(flag)    
            System.out.println("element is present in the matrix");    
        else    
            System.out.println("element is not present in the matrix");     

}
}
