// Aim: Programs on various types of inheritance and Exception handling.
// Name: Mayuresh Mene
// Roll no./UIN: 32/251P016
// Class: S.E.Computer A
public class Employee extends Person {
    private int salary;
    private String working_hours;
    private int employee_id;
    private String department;

    Employee(String name, int age, String gender, int salary, String working_hours, int employee_id,
            String department) {
        super(name, age, gender);
        this.salary = salary;
        this.working_hours = working_hours;
        this.employee_id = employee_id;
        this.department = department;
    }

    void display() {
        super.display();
        System.out.println("Salary: " + this.salary);
        System.out.println("Hours of Working: " + this.working_hours);
        System.out.println("Employee ID: " + this.employee_id);
        System.out.println("Department of Functioning: " + this.department);
    }
}
