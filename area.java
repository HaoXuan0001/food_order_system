import java.util.Scanner;
public class area {
    public static void main(String[] args) {
        try (Scanner input = new Scanner(System.in)) {
            int choice;
            while (true) {
            System.out.println("1.Enter diameter");
            System.out.println("2.Enter radius");
            if (input.hasNextInt()) {
                choice = input.nextInt();
                if (choice == 1 || choice == 2) {
                    break;
                } else {
                    System.err.println("Invalid choice. Please enter 1 or 2.");
                }
            } else {
                System.out.println("Invalid choice. Please enter 1 or 2.");
                input.nextLine();
            }
            }

            switch (choice) {
                case 1:
                    System.out.println("Enter diameter: ");
                    double diameter = input.nextDouble();
                    double radius_1 = diameter / 2;
                    double area_1 = Math.PI * (radius_1 * radius_1);
                    System.out.println("Area of circle: " + area_1);
                    break;
                case 2:
                    System.out.println("Enter radius: ");
                    double radius_2 = input.nextDouble();
                    double area_2 = Math.PI * (radius_2 * radius_2);
                    System.out.println("Area of circle: " + area_2);
                    break;

                default:
                    System.out.println("Invalid choice. Please enter 1 or 2.");
                    break;
            }
        }
    }
}