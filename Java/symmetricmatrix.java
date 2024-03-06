import java.util.Scanner;
public class symmetricmatrix {
    public static void main(String args[]){  
        boolean flag = true;  
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of rows: ");
        int rows = scanner.nextInt();

        System.out.println("Enter the number of columns: ");
        int columns = scanner.nextInt();

        int[][] a = new int[rows][columns];
        int[][] b = new int[rows][columns];

        System.out.println("Enter the elements of matrix: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                a[i][j] = scanner.nextInt();
            }
        }
    
              
        int c[][]=new int[rows][columns];
            
          
        for(int i=0;i<columns;i++){    
        for(int j=0;j<rows;j++){    
            c[j][i] = a[i][j];    
        }       
        }   
        
        for(int i=0;i<columns;i++){    
            for(int j=0;j<rows;j++){    
                if(a[i][j] != c[i][j]){    
                    flag = false;    
                    break;    
                }    
            }       
            } 

            if(flag)    
            System.out.println("Matrices are symmetric");    
        else    
            System.out.println("Matrices are not symmetric");        

}
}
