package program;
import java.awt.*;
//class AppletExample extends Frame
//{
//	
//	public AppletExample()
//	{
//		Frame frame1=new Frame();
//		
//		Button btn=new Button("clikc me!!");
//		
//		btn.setBounds(20,30,60,50);
//		add(btn);
//		setSize(350,350);  //to crete a window of specified size
//		setTitle("jaggineni ganesh applet program");
//		
//		setLayout(null);
//		setVisible(true); //when a frame is created it is not visibe untile you call setVisible(true);
//	}
//	
//	public static void main(String a[])
//	{
//		AppletExample appletobj=new AppletExample();
//	}
//
//}


//creating frame by instantiating frame class
class AppletExample
{
	public AppletExample()
	{
		Frame framewindow=new Frame("ganesh jaggineni frame"); //creating a frame
		
		Label label=new Label("hello java");//creating a label
		framewindow.add(label);
		framewindow.setSize(400,400);
		framewindow.setVisible(true);
		
	}

	public static void main(String a[])
	{
	AppletExample win=new AppletExample();
	}
}
