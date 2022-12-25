package program;

//single inheritance

class Amazon //Parent class
{
	int items_count=100;
	void showItems()  //parent class method showitems
	{
		System.out.println("clock\nwatch\nphone\nmemory card");
	}
}

class Samsung extends Amazon  //child class inherits parent class
{
	int rate;
	void sayName()
	{
		System.out.println("I am belongs to samsung company");
	}
	void sayFeatures()
	{
		int gb=500;
		int ram=12;
		System.out.println("The features of samsung is : "+gb+" gb "+"and ram is"+ram);
	}
}


public class Inheritance {

	public static void main(String args[])  //main method
	{
		Samsung samsungphone = new Samsung();  //child class object creation
		samsungphone.sayName();
		samsungphone.sayFeatures();
		samsungphone.showItems(); //accessing parent class method to show single inheritance concept
		System.out.println("Items count is :"+samsungphone.items_count);
	}
}
