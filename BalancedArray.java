/*
Consider an array [a0, a1,a2,… an-1] of size n where n is an even number. An array is balanced if the sum of the left half of the array elements is equal to the sum of right half.



To balance an array, add a non-negative integer x to any array element. Find the smallest value of ‘x’ that makes the array balanced.

Input format :
The first line of the input consists of the value of n.

Next input is the array elements.

Output format :
The output prints the smallest value of 'x' that makes the array balanced.

If the array is already balanced, print it.

Refer sample input and output for formatting specifications.

Sample test cases :
Input 1 :
6
1 2 1 2 1 3
Output 1 :
2
Input 2 :
6
1 2 3 2 1 3
Output 2 :
The array is already balanced
*/
//PROGRAM
import java.util.*;
class BalancedArray
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        int left_sum = 0;
        int right_sum = 0;
        for(int i=0;i<n;i++)
        {
            arr[i] = sc.nextInt();
        }
        int mid = n/2;
        for(int i=0;i<n;i++)
        {
            if(i<mid)
                left_sum += arr[i];
            else if(i>=mid)
                right_sum += arr[i];
                
        }
        if(left_sum == right_sum)
            System.out.println("The array is already balanced");
        else
            System.out.println(Math.abs(left_sum-right_sum));
    }
}