package projectjava;

import java.util.Scanner;

public class even_number {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Sila masukkan nombot mula: ");
        int noMula = input.nextInt();

        System.out.println("Sila masukkan nombor tamat: ");
        int noTamat = input.nextInt();

        for(int i=noMula;i<=noTamat;i+=2){
            if ((i % 2) != 1) {
                System.out.print(i + ",");
            }
        }
    }
}
