/*Write a Java Program to find maximum number using ternary operator*/

import java.util.Scanner;
public class Maxnumber {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter First number");
		int num1 = scanner.nextInt();
		System.out.println("Enter Second number");
		int num2 = scanner.nextInt();

		int max = (num1 > num2) ? num1 : num2;
		System.out.println("Maximum number is: "+max);

		/*Enter First number
		48
		Enter Second number
		12
		Maximum number is: 48*/

	}

}
