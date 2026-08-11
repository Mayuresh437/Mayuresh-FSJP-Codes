// Aim: Programs on various types of inheritance and Exception handling.
// Name: Mayuresh Mene
// Roll no./UIN: 32/251P016
// Class: S.E.Computer A
public class Person {
    private String name;
    private int age;
    private String gender;

    Person(String name, int age, String gender){
        this.name = name;
        this.age = age;
        this.gender = gender;
    }

    void display(){
        System.out.println("Name: " + this.name);
        System.out.println("Age: " + this.age);
        System.out.println("Gender: " + this.gender);
    }
}
