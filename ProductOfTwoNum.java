package javaprograms;
import java.util.Scanner;

public class ProductOfTwoNum 
{
	public static void main(String args[])
	{	int num1,num2;
		Scanner obj=new Scanner(System.in);
		System.out.println("Enter 1st number :");
		num1=obj.nextInt();
		System.out.println("Enter 2nd number :");
		num2=obj.nextInt();
		System.out.println("The Product Of "+num1+" And "+num2+" is "+num1*num2);
	}
}
