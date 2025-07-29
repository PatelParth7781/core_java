
/*
  Create a superclass Animal with a method makeSound(). Create two subclasses Dog and Cat that override the method.
*/

// Animal.java (Superclass)
class Animal 
{
    public void makeSound() 
	{
          System.out.println("The animal makes a sound.");
    	}
}

// Dog.java (Subclass)
class Dog extends Animal 
{
    public void makeSound() 
	{
          System.out.println("The dog barks.");
    	}
}

// Cat.java (Subclass)
class Cat extends Animal 
{
    public void makeSound() 
	{
          System.out.println("The cat meows.");
    	}
}

// Main.java
public class Animalsound 
{
    public static void main(String[] args) 
	{
          Animal animal = new Animal();
          Animal dog = new Dog();
          Animal cat = new Cat();

          System.out.println("Animal Sound:");
          animal.makeSound();

          System.out.println("\nDog Sound:");
          dog.makeSound();

          System.out.println("\nCat Sound:");
          cat.makeSound();

	/*
	  Animal Sound:
	  The animal makes a sound.

	  Dog Sound:
	  The dog barks.

	  Cat Sound:
	  The cat meows.
	*/
    }
}
