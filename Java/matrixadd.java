import java.util.Scanner;

public class matrixadd {
    public static void main(String args[]){  
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of rows: ");
        int rows = scanner.nextInt();

        System.out.println("Enter the number of columns: ");
        int columns = scanner.nextInt();

        int[][] a = new int[rows][columns];
        int[][] b = new int[rows][columns];

        System.out.println("Enter the elements of matrix A: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                a[i][j] = scanner.nextInt();
            }
        }

        System.out.println("Enter the elements of matrix B: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                b[i][j] = scanner.nextInt();
            }
        }    
              
        int c[][]=new int[rows][columns];
            
          
        for(int i=0;i<rows;i++){    
        for(int j=0;j<columns;j++){    
        c[i][j]=a[i][j]+b[i][j];      
        System.out.print(c[i][j]+" ");    
        }    
        System.out.println();    
        }    
        }  
}
