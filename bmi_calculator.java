import java.util.Scanner;
public class bmi_calculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Masukkan nama: ");
        String Nama = input.next();

        int Berat;

        while (true) {
        System.out.println("Masukkan Berat: ");
        //int Berat = input.nextInt();
        if (input.hasNextInt()) {
            Berat = input.nextInt();
            break;    
        } else {
            System.out.println("Invalid value");
            input.nextLine();
        }
    }
        float Tinggi;

        while (true) {
        System.out.println("Masukkan Tinggi dalam meter: ");
        //float Tinggi = input.nextFloat();
        if (input.hasNextFloat()) {
            Tinggi = input.nextFloat();
            break;
        } else {
            System.out.println("Invalid value");
            input.nextLine();
        }
    }
        
        double bmi = Berat / (Tinggi * Tinggi);
        
        if (bmi <= 20.6) {
            System.out.println("BMI Status of " + Nama + ": Kurus");
        } else if (bmi >= 20.7 && bmi <= 26.4 ) {
            System.out.println("BMI Status of " + Nama + ": Normal");
        } else if (bmi >= 26.5 && bmi <= 30.9) {
            System.out.println("BMI Status of " + Nama + ": Gemuk");
        } else if (bmi >= 31.0 && bmi <= 45.2) {
            System.out.println("BMI Status of " + Nama + ": Obesiti");
        } else if (bmi >= 45.3) {
            System.out.println("BMI Status of " + Nama + ": Bahaya");
        }
    }
}
