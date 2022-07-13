package com.tool.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconfig {
	
	static String dburl="jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool";
	static String dbusername="aashu";
	static String dbpassword="KPMG@211";
	
	static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con=DriverManager.getConnection(dburl,dbusername,dbpassword);
		}
		catch(Exception e){
			System.out.println("Dbconfig File Error"+  e);
		}
		
		return con;
	}
	
}
