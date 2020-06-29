package com.util;
import java.sql.Connection; 
import java.sql.DriverManager;

public class MySqlConnection {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","jeet"); 
			if(con==null)
			{
				System.out.println("Database is not connected 0");
			}
			else
			{
				System.out.println("Database is Connected 0");
			}
		}
		catch(Exception e){ System.out.println(e);}  
		return con;
	}
	
	public static void main(String args[])
	{  
		MySqlConnection.getConnection();
	}
}
