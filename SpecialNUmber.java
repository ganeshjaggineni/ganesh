package ganeshcodes;
import java.util.Scanner;
public class SpecialNUmber {

	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		int temp = num;
		int digit=0,sum=0,prod=1,ans;
		while(num>0)
		{
			digit = num%10;
			sum = sum + digit;
			prod = prod * digit;
			num=num/10;
		}
		ans = sum + prod;
		if(ans == temp)
			System.out.println("Yes");
		else 
			System.out.println("No");
	}
}
