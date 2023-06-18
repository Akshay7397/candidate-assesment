package HR;

import java.sql.*;


public class Connect {


	static Connection con ;
	public static Connection getConnect()
	{
		try 
		{
				Class.forName("com.mysql.jdbc.Driver");
				
				 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/candidate","root","");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	}


}
