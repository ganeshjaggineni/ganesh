import java.awt.*;
import java.awt.event.*;


class AwtClass extends WindowAdapter
{


public AwtClass()
{

Frame frame1=new Frame();

frame1.addWindowListener(this);

frame1.setSize(400,400);
frame1.setLayout(null);
frame1.setVisible(true);

Label label1=new Label("lakireddy bali reddy engineering college");
frame1.add(label1);

}
public void windowClosing(WindowEvent e)
{
System.exit(0);
}
public static void main(String a[])
{
AwtClass obj=new AwtClass();
}

}
