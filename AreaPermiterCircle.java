package javaprograms;
import java.util.Scanner;

public class AreaPermiterCircle {
	public static void main(String args[])
	{
		double radius,area,perimeter;
		Scanner input=new Scanner(System.in);
		System.out.println("Enter Radius Of Circle :");
		radius=input.nextFloat();
		area=Math.PI*radius*radius;
		perimeter=2*Math.PI*radius;
		
		System.out.println("The Area Of Circe with radius "+radius+" is "+area);
		System.out.println("The perimeter Of Circe with radius "+radius+" is "+perimeter);
		
	}
}
