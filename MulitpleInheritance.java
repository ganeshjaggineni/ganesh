package program;

interface TollyWood
{
	void tolyWoodMoviesNames();

}

interface HollyWood
{
	void hollyWoodMoviesNames();
}

class MovieTime implements TollyWood,HollyWood
{
	public void tolyWoodMoviesNames()
	{
		System.out.println("1.pushpa\t2.salar\t3.kobbari matta\t4.avunu\t5.bahubali");
	}
	public void hollyWoodMoviesNames()
	{
		System.out.println("1.avatar\t2.dunkirk\t3.avenger\t4.inception\t5.aquaman");
	}
	
}






class MulitpleInheritance {
	public static void main(String a[])
	{
	MovieTime movie=new MovieTime();
	movie.tolyWoodMoviesNames();
	movie.hollyWoodMoviesNames();
	}

}
