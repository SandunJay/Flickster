package com.stream;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
    
	public static Connection con = null;
	public static Statement stmt=null;
	public static ResultSet rs = null;
	private static boolean isSuccess = false;
	
//	Checks given values of the parameters with the database values
	public static boolean validate(String userName, String password){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from users where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e ) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
//	Get's user data from a particular user who's logged in 
	public static List <User> fetchUser(String username){
		ArrayList<User> user = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from users where username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name= rs.getString(2);
				String email= rs.getString(3);
				String phone= rs.getString(4);
				String userName= rs.getString(5);
				String password= rs.getString(6);
				
				User u = new User(id,name,email,phone,userName,password);
				user.add(u);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
 	}
	
	
//	JDBC connector associated with registering 
	public static boolean register(String name, String email, String phone, String username, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Insert into users values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			 int r = stmt.executeUpdate(sql);
			
			if (r>0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
//	JDBC connector for update function
	public static boolean update(String id, String name, String email, String phone, String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update users set name='"+name+"',email='"+email+"',phone ='"+phone+"',username='"+username+"',password='"+password+"' where id='"+id+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r>0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
//	gets the data of a user who's logged in by using their ID
	public static List<User> getUser(String Id){
		int convertedID = Integer.parseInt(Id);
		ArrayList<User> user = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from users where id='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id= rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				User u = new User(id,name,email,phone,username,password);
				
				user.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
//	JDBC connector for deleting account
	public static boolean deleteUser(String id) {
		int convertedID = Integer.parseInt(id);
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from users where id='"+convertedID+"'";
			
			int r = stmt.executeUpdate(sql);
			if(r>0) {
				isSuccess = true;
			}else {
				isSuccess=false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
