import java.util.Scanner;

public class InsertANumberAtGivenLocationOfArray_4_21 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int size = sc.nextInt();
        int arr1[] = new int[size];
        
        for(int i=0 ; i<size ; i++){
            arr1[i] = sc.nextInt();
        }

        int Index = sc.nextInt();
        int number = sc.nextInt();
        int arr2[] = new int[size+1];

        for(int i=0;i<(size+1);i++){
            if(i==Index){
                arr2[i]=number;
            }
            else if(i<Index){
                arr2[i]=arr1[i];
            }
            else if(i>Index){
                arr2[i]=arr1[i-1];
            }
        }
        for(int i=0;i<(size+1);i++){
            System.out.print(arr2[i]+" ");
        }
    }
}