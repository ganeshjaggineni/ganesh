import java.util.*;
import java.lang.*;
import java.io.*;

class Codechef
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
			Scanner sc = new Scanner(System.in);
		int withdraw_x = sc.nextInt();
		double balance_y = sc.nextDouble();
		
		if(withdraw_x+0.5<=balance_y && withdraw_x%5==0)
		{
		    
		    balance_y = balance_y-withdraw_x-0.50;
		    System.out.printf("%.2f",balance_y);
		}
		else
		    		    System.out.printf("%.2f",balance_y);


	}
}
