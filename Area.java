/*Write a Java program to calculate area using method overloading for the following shapes:

Circle (radius)

Rectangle (length, breadth)

Triangle (base, height)

Use the method area() with different parameters.*/

class ShapeArea{

	void circle(double r)
	{
		System.out.println("Area of Circle :"+(Math.PI*r*r));
	}

	void rectangle(double l,double b)
	{
		System.out.println("Area of Rectangle :"+(l*b));
	}

	void triangle(double b,double h)
	{
		System.out.println("Area of Triangle :"+(0.5*b*h));
	}

}
public class Area {

	public static void main(String[] args) {
		ShapeArea obj = new ShapeArea();

		obj.circle(5);
		obj.rectangle(4,6);
		obj.triangle(3,7);

	  /*Area of Circle :78.53981633974483
		Area of Rectangle :24.0
        Area of Triangle :10.5*/


	}

}
