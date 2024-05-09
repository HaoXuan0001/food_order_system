import java.util.Scanner;
public class bmi_calculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Masukkan nama: ");
        String Nama = input.next();
        
        System.out.println("Masukkan Berat: ");
        int Berat = input.nextInt();

        System.out.println("Masukkan Tinggi dalam meter: ");
        float Tinggi = input.nextFloat();

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
