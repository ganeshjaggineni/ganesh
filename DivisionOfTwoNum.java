package javaprograms;
import java.util.Scanner;

public class DivisionOfTwoNum {
	
		public static void main(String args[])
		{
			
			Scanner scanning = new Scanner(System.in);
			System.out.println("Etnter dividend :");
			int dividend=scanning.nextInt();
			System.out.println("Enter divisior :");
			int divisior=scanning.nextInt();
			
			float division=dividend/divisior;
			System.out.println("The division of "+dividend+" by "+divisior+" is :"+division);
			
		}
	
}
