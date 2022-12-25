package program;

class ThreadExample extends Thread //inheriting thread class to implements java threads
{ 
	public void run()
	{
		for(int i=0;i<=15;i++)  //for loop begin 
		{
			if(i==3)
			{
				try {
					System.out.println("Thread going to sleep for 4000 milliseconds");
				Thread.sleep(4000);
				}
				catch(InterruptedException e)
				{
					System.out.println(e);
				}
			}
				
//				if(i==7)
//				{
//					try {
//					wait(); //notify()
//					}
//					catch(InterruptedException e)
//					{
//						System.out.println(e);
//					}
//				}
				
			//stop() method is depricated in java
			
			System.out.println("Ganesh jaggineni thread"+i);
		}
	}
}




public class Threads {

	public static void main(String args[])
	{
		ThreadExample threadobj = new ThreadExample(); //threadexample class object
		threadobj.start(); //start() method implicitly calls run() method
	}
}
