package javaprograms;
import java.util.Scanner;
public class AreaPerimterRectangle {
	public static void main(String args[])
	{
		float length,breadth,perimeter,area;
		Scanner obj=new Scanner(System.in);
		System.out.println("Enter Length Of Rectangle :");
		length = obj.nextFloat();	
		System.out.println("Enter Breadth Of Rectangle :");
		breadth=obj.nextFloat();
		
		perimeter=2*(length+breadth);
		area=length*breadth;
		System.out.printf("The Area Of Rectangle with lenth %.2f and breadth %.2f is %.2f",length,breadth,area);
		System.out.printf("\nThe perimter Of Rectangle with lenth %.2f and breadth %.2f is %.2f",length,breadth,perimeter);

		
	}//main method ends
}//class ends


/*
output:
Enter Length Of Rectangle :
4
Enter Breadth Of Rectangle :
6
The Area Of Rectangle with lenth 4.00 and breadth 6.00 is 24.00
The perimter Of Rectangle with lenth 4.00 and breadth 6.00 is 20.00
*/