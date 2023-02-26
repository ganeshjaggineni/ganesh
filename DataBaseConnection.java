import java.sql.*;
class DataBaseConnection
{
public static void main(String args[])
{
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("driver is registered sucessfully");



Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","scott","tiger");
System.out.println(connect);
System.out.println("connection succeded");

//statement object
Statement stm=connect.createStatement();

//execute
String sqlstatement="CREATE TABLE EMPTABLEGANI(empid integer,empname varchar2(30))";
stm.execute(sqlstatement);
System.out.println("Table Created sucessfully");


}
catch(Exception e)
{
System.out.println(e);
}
}
}