package com.stream;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/flickster?autoReconnect=true&useSSL=false";
	private static String username = "root";
	private static String password = "Sandun@22612";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
			
		} catch (Exception e) {
			System.out.println("Database Connection is not success");
			e.printStackTrace();
		}
		
		return con;
	}
}
