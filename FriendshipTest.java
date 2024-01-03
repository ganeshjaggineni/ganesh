/*
								Friendship Test

 

Michael is celebrating his 10th birthday and he wished to arrange a party for all his classmates. But there are n tough guys amongst his class who are weird. They thought that this is the best occasion for testing their friendship with him. They put up conditions before Michael that they will break the friendship unless he gives them a grand party on their chosen day. Formally, the ith friend will break his friendship if he does not receive a grand party on an ith day.

 

Michael is not a lavish spender and can give at most one grand party daily. Also, he wants to invite only one person to a party. So he just wonders what the maximum number of friendships he can save.

Please help Michael with this difficult task.

Input format :
First-line contains a single integer denoting n. Assume that the maximum value for n is 50.

Second-line contains n space-separated integers where the ith integer corresponds to the day the ith as given in the problem.

Output format :
The output prints a single line corresponding to the maximum number of friendships Michael can save.

Sample test cases :
Input 1 :
2
3 2
Output 1 :
2
Input 2 :
5
2 4 3 4 6
Output 2 :
4

*/
//PROGRAM

import java.util.*;
class FriendshipTest
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i=0;i<n;i++)
        {
            arr[i] = sc.nextInt();
        }
        int total = arr.length;
        int similar = 0;
        for(int i=0;i<n;i++)
        {
            for(int j=i+1;j<n;j++)
            {
                if(arr[i] == arr[j])
                {
                    similar++;
                    arr[i] = -1;
                }
            }
        }
        System.out.println(total-similar);
    }
}