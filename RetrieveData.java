import java.sql.*;
class RetrieveData
{
public static void main(String args[])
{
try
{
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce";
String username="scott";
String password="tiger";
//registering the driver
Class.forName(driver);
//Establish The Connection
Connection con=DriverManager.getConnection(url,username,password);
//Create Statement Object
Statement stmt=con.createStatement();
String query="SELECT * FROM EMPTABLEGANI";
//Executing The Query
ResultSet result=stmt.executeQuery(query);
//fetching First Record
System.out.println("\nfetching one record\n");
result.next();
System.out.println(result.getInt(1));
System.out.println(result.getString("empname"));

//fetching whole data
System.out.println("\nretrieving whole table data\n");
while(result.next())
{
System.out.print(result.getInt("empid")+"\t");
System.out.println(result.getString("empname"));
}//while end
con.close();
}//try end
catch(Exception e)
{
System.out.println(e);
}//catch end
}//main end
}//class end