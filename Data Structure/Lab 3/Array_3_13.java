import java.util.Scanner;

public class Array_3_13 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            int n = sc.nextInt();
            int arr[] = new int[n];
            for(int i=0 ; i<n ; i++){
                arr[i] = sc.nextInt();
            }
            for(int i=0 ; i<n ; i++){
                System.out.println("a["+i+"] :"+arr[i]);
            }
        }
    }
}
