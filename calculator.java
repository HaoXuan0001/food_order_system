import java.util.Scanner;
public class calculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int choice1;
        while (true) {
            System.out.println("1.Circumference 2.Area");
            if (input.hasNextInt()) { //Choose circumference or area
                choice1 = input.nextInt();
                if (choice1 == 1 || choice1 == 2) {
                    break;
                } else {
                    System.out.println("Invalid choice.");
                }
            } else {
                System.out.println("Invalid choice.");
                input.nextLine();
            }
        }

        if (choice1 == 1) { //Circumference
            int choice2;
            while (true) {
                System.out.println("1.Radius 2.Diameter");
                if (input.hasNextInt()) {
                    choice2 = input.nextInt();
                    if (choice2 == 1 || choice2 == 2) {
                        break;
                    } else {
                        System.out.println("Invalid choice.");
                    }
                } else {
                    System.out.println("Invalid choice.");
                    input.nextLine();
                }
            }
            
            if (choice2 == 1) { //Circumference with radius
                double radius;
                while (true) {
                    System.out.println("Enter radius: ");
                    if (input.hasNextDouble()) {
                        radius = input.nextDouble();
                        double Circumference = 2 * Math.PI * radius;
                        System.out.println("Circumference: " + Circumference + " cm");
                        break;
                        
                    } else {
                        System.out.println("Invalid choice");
                        input.nextLine();
                    }
                }
            } 
            if (choice2 == 2) { //Circumference with diameter
                double diameter;
                while (true) {
                    System.out.println("Enter diameter: ");
                    if (input.hasNextDouble()) {
                        diameter = input.nextDouble();
                        double radius = diameter /2;
                        double Circumference = 2 * Math.PI * radius;
                        System.out.println("Circumference: " + Circumference + " cm");
                        break;
                        
                    } else {
                        System.out.println("Invalid choice");
                        input.nextLine();
                    }
                }
            }

        } 
        if (choice1 == 2) { //Area
            int choice2;
            while (true) {
                System.out.println("1.Radius 2.Diameter");
                if (input.hasNextInt()) {
                    choice2 = input.nextInt();
                    if (choice2 == 1 || choice2 == 2) {
                        break;
                    } else {
                        System.out.println("Invalid choice.");
                    }
                } else {
                    System.out.println("Invalid choice.");
                    input.nextLine();
                }
            }

            if (choice2 == 1) { //Area with radius
                double radius;
                while (true) {
                    System.out.println("Enter radius: ");
                    if (input.hasNextDouble()) {
                        radius = input.nextDouble();
                        double area = Math.PI * (radius * radius);;
                        System.out.println("Area: " + area + " cm²");
                        break;
                        
                    } else {
                        System.out.println("Invalid choice");
                        input.nextLine();
                    }
                }
            } 

            if (choice2 == 2) { //Area with diameter
                double diameter;
                while (true) {
                    System.out.println("Enter diameter: ");
                    if (input.hasNextDouble()) {
                        diameter = input.nextDouble();
                        double radius = diameter /2;
                        double area = Math.PI * (radius * radius);;
                        System.out.println("Area: " + area + " cm²");
                        break;
                        
                    } else {
                        System.out.println("Invalid choice");
                        input.nextLine();
                    }
                }
            } 

        }
    }
}
