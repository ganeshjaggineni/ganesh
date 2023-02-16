//Java program to print the sum of two numbers.
package javaprograms;

import java.util.Scanner;//importing requiered classes

public class TwoNumSum 
{
	public static void main(String args[])//main method
	{
		Scanner scan=new Scanner(System.in);//creating scanner obj
		System.out.println("Enter 1st number :");
		int num1=scan.nextInt();
		System.out.println("Enter 2nd number :");
		int num2=scan.nextInt();
		//performing addition
		int res=num1+num2;
		System.out.println("The Addition Of "+num1+" and "+num2+" is :"+res);//displaying result
	}//main method ends

}//class ends
