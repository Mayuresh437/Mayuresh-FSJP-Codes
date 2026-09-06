//Aim: WAP to create a calculator class to add two numbers. Use constructor overloading to
//initialize the data with either default values or user provided values. Use method overloading to
//add integer or double numbers.

//Name: Mayuresh Mene
//UIN: 251P016
//Class: S.E. Computer A

public class Calculator {

    int a;
    int b;

    Calculator() {
        a = 8;
        b = 0;
    }

    Calculator(int x, int y) {
        a = x;
        b = y;
    }

    void add(int p, int q) {
        int sum = p + q;
        System.out.println("Integer Sum: " + sum);
    }

    void add(double p, double q) {
        double sum = p + q;
        System.out.println("Double Sum: " + sum);
    }
}
