//write a java program to insert values into database
//importing require classes
import java.sql.*;
class InsertValues
{
public static void main(String args[])
{
try
{

//registering with driver
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("driver registered succesfully");

//getting a connection
Connection connectdb=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","scott","tiger");
System.out.println(connectdb);
System.out.println("databse connection established succesfully");

//statement object
Statement stmt=connectdb.createStatement();
/*
//execute sql query
//inserting 1st query
String query="INSERT INTO EMPTABLEGANI VALUES(590,'gani')";
int rows_effect=stmt.executeUpdate(query);
System.out.println(rows_effect+" rows effected");
rows_effect++;
String query2="INSERT INTO EMPTABLEGANI VALUES(591,'naveen')";
rows_effect=stmt.executeUpdate(query2);
System.out.println(rows_effect+" rows effected");

//addBatch method
String query3="INSERT INTO EMPTABLEGANI VALUES(589,'nikhilesh')";
stmt.addBatch(query3);
String query4="INSERT INTO EMPTABLEGANI VALUES(501,'suresh')";
stmt.addBatch(query4);
stmt.executeBatch();
System.out.println("sucessfully batch execute");
*/
//column adding
String columnadd="ALTER TABLE EMPTABLEGANI ADD 'empemailid' varchar2(30)";
stmt.executeUpdate(columnadd);

//updating database
//String updatequery="UPDATE TABLE SET 
}//try ends
catch(Exception e)
{
System.out.println(e);
}//catch ends


}//main method ends

}//class ends