package program;


class Btech
{
	void displayClgNames()
	{
		System.out.println("1.Lakireddy bali reddy clg of engineering \n2.Jntuk \n3.Mvgr\n4.Ragu engineering clg");
	}
	void displayCourses()
	{
		System.out.println("marine eng\nchemical eng\nairtificial intelligence \ncyber security");
	}
	
}

class LbrceClg extends Btech
{
	void displayLbrceBranches()
	{
		System.out.println("1.cse\t2.ece\t.ai_ml");
	}
	void displayLbrceStrength()
	{
		int stu_count=1000;
		System.out.println("Lbrce clg strength is :"+stu_count+" students");
	}
}

class CseBranch extends LbrceClg
{
	public static void displaySubjects()
	{
		System.out.println("1.c\n2.java\n3.compiler_design\n4.machine learing");
	}
	void showReview()
	{
		System.out.println("ok,good clg we can join");
	}
}



public class MultilvelInheritance {  //class to demonstrate multilevel inheritance
	
	public static void main(String a[])  //main method
	{
	CseBranch obj=new CseBranch(); //child class object 
	CseBranch.displaySubjects();  //child class method
	obj.showReview();
	
	obj.displayLbrceStrength();
	obj.displayLbrceBranches();   //parent class methods 
	
	obj.displayCourses();
	obj.displayClgNames();    //grand parent class methods
	
	
	//LbrceClg lbceobj=new LbrceClg();
	//lbceobj.displayCourses();
	}

}
