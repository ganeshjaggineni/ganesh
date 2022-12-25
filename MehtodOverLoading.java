package program;



public class MehtodOverLoading {
	
	
		void printNames(String name1,String name2)
		{
			System.out.println("OVERLOADED WITH TWO NAMES \nThe entered names are :"+name1+"\t"+name2);
		}
		void printNames(String name1,String name2,String name3)
		{
			System.out.println("OVERLOADED WITH THREE NAMES \nThe entered names are :"+name1+"\t"+name2+"\t"+name3);
		}
	
	public static void main(String args[])
	{
		MehtodOverLoading obj=new MehtodOverLoading();
		obj.printNames("ganesh","jaggineni","java");
		obj.printNames("java","programming");
	}

}
