// Aim: Programs on various types of inheritance and Exception handling.
// Name: Mayuresh Mene
// Roll no./UIN: 32/251P016
// Class: S.E.Computer A
import java.util.InputMismatchException;
import java.util.Scanner;

public class Company {
    public static void main(String[] args) {
        try {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Name: ");
        String name = sc.nextLine();

        System.out.print("Enter Age: ");
        int age = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Gender: ");
        String gender = sc.nextLine();

        System.out.print("Enter Salary: ");
        int salary = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Number of Hours Working Daily: ");
        String working_hours = sc.nextLine();

        System.out.print("Enter Employee ID: ");
        int employee_id = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Name of Department: ");
        String department = sc.nextLine();

        System.out.print("Enter Number of Projects Completed: ");
        int number_of_projects = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter number of Members in Team: ");
        int number_of_team_members = sc.nextInt();
        sc.nextLine();

        System.out.println("\n");

        Manager m1 = new Manager(name, age, gender, salary, working_hours, employee_id, department, number_of_projects, number_of_team_members);
        m1.display();

        sc.close();
        } catch (InputMismatchException e) {
            System.out.println("Enter Number only");
        } catch (Exception e) {
            System.out.println("invalid Input");
        }
    }
}
