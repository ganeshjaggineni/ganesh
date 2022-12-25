package program;

class StuData{
	final int stu_age=23;
	void display()
	{
	
		stu_age=34;
		System.out.println("Stuage is "+stu_age);
		
		
	}
}




public class FinalKeword {
	public static void main(String args[])
	{
	StuData student=new StuData();
			student.display();
	}
}
