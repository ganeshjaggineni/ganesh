
package javaprograms; //package

import java.util.Scanner;//import required class
public class PrintName
{
	
		public static void main(String args[])
		{
			Scanner s=new Scanner(System.in);//creating Scanner class obj
			System.out.println("Enter your beautiful name :");
			String name=s.next();
			System.out.println("hello\n"+name);//displaying result
		}//main method ends
}//class ends

