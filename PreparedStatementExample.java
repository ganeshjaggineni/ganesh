import java.sql.*;
import java.util.Scanner;
class PreparedStatementExample
{
public static void main(String a[])
{
try
{
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce";
String username="scott";
String pwd="tiger";
int id;
String name;
//REGISTERING THE DRIVER
Class.forName(driver);
//ESTABLISH THE CONNECTION
Connection con=DriverManager.getConnection(url,username,pwd);
//EXECUTING THE QUERY
Scanner scan=new Scanner(System.in);
System.out.println("Enter id :");
id=scan.nextInt();
System.out.println("Enter name :");
name=scan.next();
String query="INSERT INTO EMPTABLEGANI VALUES(?,?)";
PreparedStatement pstmt=con.prepareStatement(query);
pstmt.setInt(1,id);
pstmt.setString(2,name);

int rows_effect=pstmt.executeUpdate();
System.out.println(rows_effect+" rows effected");

//CLOSING THE CONNECTION
con.close();
}//try end
catch(Exception e)
{
System.out.println(e);
}
}//main end
}//class end