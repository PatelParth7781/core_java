
/*
Write a Java program to demonstrate method overloading by creating a class Calculator with multiple add() methods that accept different parameter types.
*/

class Calculator 
{
    // Method to add two integers
    public int add(int a, int b) 
    {
        return a + b;
    }

    // Method to add three integers
    public int add(int a, int b, int c) 
    {
        return a + b + c;
    }

    // Method to add two floating point numbers
    public double add(double a, double b) 
    {
        return a + b;
    }

    // Method to add two strings
    public String add(String a, String b) 
    {
        return a + b;
    }
}

public class Main 
{
    public static void main(String[] args) 
    {
        Calculator calculator = new Calculator();

        System.out.println("Adding two integers: " + calculator.add(5, 7));
        System.out.println("Adding three integers: " + calculator.add(5, 7, 9));
        System.out.println("Adding two floating point numbers: " + calculator.add(5.5, 7.7));
        System.out.println("Adding two strings: " + calculator.add("Hello, ", "World!"));
	
	/*
	Adding two integers: 12
	Adding three integers: 21
	Adding two floating point numbers: 13.2
	Adding two strings: Hello, World!
	*/ 

   }
}