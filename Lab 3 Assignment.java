/*
write a program to declare stack. Store 10 elements into it. Remove 4 elements from stack and display it.
*/

class Stack 
{
    int[] s = new int[10];
    int top = -1;

    void push(int x)
	{ 
		s[++top] = x; 
   	}
    
    int pop() { return s[top--]; 
}
    void display() 
	{ 
	        System.out.println("Stack Elements:");
        	for (int i=0; i<=top; i++) System.out.print(s[i]+" "); 
        	System.out.println("\n");
    	}
}

public class Mainclass 
{
    public static void main(String[] args)
	{
        
        	// Initializing Stack
        
        	Stack stack = new Stack();
        	for (int i=1; i<=10; i++) stack.push(i);
        	stack.display();

	        // Removing Elements
        
        	System.out.println("Removing 4 elements:");
        	for (int i=0; i<4; i++) System.out.println("Popped: "+stack.pop());
        	stack.display();
		
		/*	
		Stack Elements:
		1 2 3 4 5 6 7 8 9 10

		Removing 4 elements:
		Popped: 10
		Popped: 9
		Popped: 8
		Popped: 7
		Stack Elements:
		1 2 3 4 5 6
		*/
    	}
}
