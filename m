import java.util.Scanner;

public class Calculator {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            displayMenu();
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    performBasicCalculation();
                    break;
                case 2:
                    performTrigonometricCalculation();
                    break;
                case 3:
                    performUnitConversion();
                    break;
                case 4:
                    performMatrixOperation();
                    break;
                case 5:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid choice. Please try again.");
                    break;
            }
        } while (choice != 5);

        scanner.close();
    }

    public static void displayMenu() {
        System.out.println("\nMenu:");
        System.out.println("1. Basic Calculation");
        System.out.println("2. Trigonometric Calculation");
        System.out.println("3. Unit Conversion");
        System.out.println("4. Matrix Operation");
        System.out.println("5. Exit");
        System.out.print("Enter your choice: ");
    }

    public static void performBasicCalculation() {
        Scanner scanner = new Scanner(System.in);
        double num1, num2, result;
        char operator;

        System.out.print("Enter first number: ");
        num1 = scanner.nextDouble();
        System.out.print("Enter operator (+,-,*,/): ");
        operator = scanner.next().charAt(0);
        System.out.print("Enter second number: ");
        num2 = scanner.nextDouble();

        switch (operator) {
            case '+':
                result = num1 + num2;
                break;
            case '-':
                result = num1 - num2;
                break;
            case '*':
                result = num1 * num2;
                break;
            case '/':
                result = num1 / num2;
                break;
            default:
                System.out.println("Invalid operator.");
                return;
        }

        System.out.println("Result: " + result);
    }

    public static void performTrigonometricCalculation() {
        Scanner scanner = new Scanner(System.in);
        int choice;
        double angle, result;

        System.out.println("\nTrigonometric Calculations:");
        System.out.println("1. Sine");
        System.out.println("2. Cosine");
        System.out.println("3. Tangent");
        System.out.print("Enter your choice: ");
        choice = scanner.nextInt();

        System.out.print("Enter angle in degrees: ");
        angle = scanner.nextDouble();

        switch (choice) {
            case 1:
                result = Math.sin(Math.toRadians(angle));
                System.out.println("Sine(" + angle + ") = " + result);
                break;
            case 2:
                result = Math.cos(Math.toRadians(angle));
                System.out.println("Cosine(" + angle + ") = " + result);
                break;
            case 3:
                result = Math.tan(Math.toRadians(angle));
                System.out.println("Tangent(" + angle + ") = " + result);
                break;
            default:
                System.out.println("Invalid choice.");
                break;
        }
    }

    public static void performUnitConversion() {
        Scanner scanner = new Scanner(System.in);
        int choice;
        double value, result;

        System.out.println("\nUnit Conversions:");
        System.out.println("1. Feet to Meters");
        System.out.println("2. Miles to Kilometers");
        System.out.print("Enter your choice: ");
        choice = scanner.nextInt();

        System.out.print("Enter value for conversion: ");
        value = scanner.nextDouble();

        switch (choice) {
            case 1:
                result = value * 0.3048;
                System.out.println(value + " feet = " + result + " meters");
                break;
            case 2:
                result = value * 1.60934;
                System.out.println(value + " miles = " + result + " kilometers");
                break;
            default:
                System.out.println("Invalid choice.");
                break;
        }
    }

    public static void performMatrixOperation() {
        Scanner scanner = new Scanner(System.in);
        int choice;
        int[][] matrix1 = {{1, 2}, {3, 4}};
        int[][] matrix2 = {{5, 6}, {7, 8}};
        int[][] result = new int[2][2];

        System.out.println("\nMatrix Operations:");
        System.out.println("1. Addition");
        System.out.println("2. Subtraction");
        System.out.print("Enter your choice: ");
        choice = scanner.nextInt();

        switch (choice) {
            case 1:
                for (int i = 0; i < 2; i++) {
                    for (int j = 0; j < 2; j++) {
                        result[i][j] = matrix1[i][j] + matrix2[i][j];
                    }
                }
                break;
            case 2:
                for (int i = 0; i < 2; i++) {
                    for (int j = 0; j < 2; j++) {
                        result[i][j] = matrix1[i][j] - matrix2[i][j];
                    }
                }
                break;
            default:
                System.out.println("Invalid choice.");
                return;
        }

        System.out.println("Resultant Matrix:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(result[i][j] + " ");
            }
            System.out.println();
        }
    }
}
