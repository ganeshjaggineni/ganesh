package program; //sub folder in my laptop


import java.awt.*;
import java.awt.event.*;  //importing packages 
 
class Mou implements MouseListener   //for handling the events we implemented mouselistener interface
{
	Frame frame1;   //creating fields
	Label label1;
	 Label label2;
	Mou()
	{
		
		frame1=new Frame();  //creating frame 
		
		frame1.setLayout(new FlowLayout(FlowLayout.CENTER)); //setting layout 
				frame1.setSize (400, 250);  //setting size 
				frame1.setVisible (true);  //making appearance

		label1=new Label("mouse events");  //just a string of text displayed in applet
		label2=new Label("mouse changed events");
		frame1.add(label1);
		frame1.add(label2);   //adding components to frame 
		
		frame1.addMouseListener(this);  //activating mouselistener interface
		
	}	
		
	
	@Override
	public void mouseClicked(MouseEvent e)  //overriding abastract methods
	{
	 label2.setText("mouse clicked");   
		
		frame1.setBackground(Color.YELLOW);   //setting backgound colors

	}
	@Override
	public void mouseReleased(MouseEvent e)
	{
		frame1.setBackground(Color.GREEN);
		label2.setText("mouse released");
	}
	
	@Override
	public void mouseEntered(MouseEvent e)
	{
		frame1.setBackground(Color.RED);
		label2.setText("mouse entered");
	}
	@Override
	public void mousePressed(MouseEvent e)
	{
		frame1.setBackground(Color.blue);
		label2.setText("mouse pressed");
	}
	@Override
	public void mouseExited(MouseEvent e)
	{
		frame1.setBackground(Color.pink);
		label2.setText("mouse exited");
	}
	
}
 class Mouse {

	public static void main(String args[])  //main method
	{
	Mou mouseeventobj=new Mou();	 //object creation to invoke consturctor
	}
}

