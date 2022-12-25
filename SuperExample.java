package program;

class Meta
{
	String ceo="ganesh jaggineni";
	public Meta()
	{
		System.out.println("meta is parent company");
	}
	void Content()
	{
		System.out.println("videos");
	}
}



class Facebook extends Meta
{
	String ceo="markjukerberg";
	void PrintCeo()
	{
		System.out.println("The ceo of facebook is :"+ceo);
		System.out.println("The ceo of meta is :"+super.ceo);
	}
	
	void content()
	{
		System.out.println("posts");
		System.out.println("parent company meta content is :");
		super.Content();
		
	}


public Facebook()
{
	super();
	System.out.println("facebook own by meta");
}


}


public class SuperExample 
{
	
	public static void main(String args[])
	{
	Facebook facebookcompany = new Facebook();
	facebookcompany.content();
	facebookcompany.PrintCeo();
		
	}
	

}
