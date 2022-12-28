package program;
import java.awt.*;
import java.awt.event.*;  //importing packages required

class Awt extends WindowAdapter
{
	Awt()
	{
		Frame frame1=new Frame("ganesh jaggineni");  //creating a frame
		Label label1=new Label("Enter your name : "); //creating a lable
		TextField textfield = new TextField(30);  //creating a textfield
		Button btn=new Button("submit");    //creating a button
		Checkbox check1=new Checkbox("html");  //creating a checkbox
		Checkbox check2=new Checkbox("c");
		Checkbox check3=new Checkbox("python",true);
		Checkbox check4=new Checkbox("java");
		Checkbox check5=new Checkbox("javasript");
		Label label2 = new Label("select your college name from the choice ");
		Choice choice=new Choice();
		List list=new List();
		
		frame1.add(label1);
		frame1.add(textfield);
								//adding components to frame
		frame1.add(check1);
		frame1.add(check2);
		frame1.add(check3);
		frame1.add(check4);
		frame1.add(check5);
		frame1.add(label2);
		frame1.add(choice);
		frame1.add(list);
		frame1.add(btn);  
		
		
		
		
		
		choice.addItem("lbrce");
		choice.addItem("jntv");
		choice.addItem("mvgr");   //adding college names list to the choice component
		choice.addItem("raghu");
		choice.addItem("anits");
		
		list.add("brute force");
		list.add("sql injection");
		list.add("xss attack");
		list.add("click jacking");
		list.add("MITM");
		
	
		
		frame1.setLayout(new FlowLayout(FlowLayout.CENTER,30,20));
		frame1.setSize(500,500);   //setting the size
		frame1.setVisible(true);  //making visible
		System.out.println("status"+check3.getState());
		System.out.println("string val"+check1.getLabel());
		
		
		
		
		
	}
	
	 
}





public class AwtComponents {
	
	public static void main(String args[])
	{
	
	Awt appletobj = new Awt();
	}
	

}
