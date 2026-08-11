// Aim: Programs on various types of inheritance and Exception handling.
// Name: Mayuresh Mene
// Roll no./UIN: 32/251P016
// Class: S.E.Computer A
public class Manager extends Employee{
    private int number_of_projects;
    private int number_of_team_members;

    Manager(String name, int age, String gender, int salary, String working_hours, int employee_id, String department, int number_of_projects, int number_of_team_members){
        super(name,age, gender, salary, working_hours, employee_id, department);
        this.number_of_projects = number_of_projects;
        this.number_of_team_members = number_of_team_members;
    }

void display(){
        super.display();
        System.out.println("Number of Projects Completed: " + this.number_of_projects);
        System.out.println("Number of Members in Team: " + this.number_of_team_members);
    }
}
