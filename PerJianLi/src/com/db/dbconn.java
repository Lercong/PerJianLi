package com.db;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sun.xml.internal.fastinfoset.sax.Properties;

public class dbconn {
	private static Properties pro;
	private static String user="root";
	private static String password="root";
	private static String driver="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost:3306/jianli";

	private static Connection conn = null;
	
	public static Connection getConnection() 
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("驱动程序加载成功");
		} catch (ClassNotFoundException e1) {
			System.out.println("驱动程序加载错误");
		} 
		try{
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("数据库连接成功");
		}catch (SQLException e2) {
			
			System.out.println("数据库连接时错误");
		} 
		//return DBconn;
		return conn;
	}

	// 关门连接
	public static void clear(Connection DBconn) {
		if (DBconn != null) {
			try {
				DBconn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/*public static PreparedStatement getPreparedStement(Connection DBconn,String sql) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt=null;
		try{
			pstmt=DBconn.prepareStatement(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return pstmt;
	}*/
	/*public static void main(String[] args) throws SQLException  
    {  
		 Connection cc=dbconn.getConnection();  
         
	      
	  
	        System.out.println("Succeeded connecting to the Database!");  
    }*/
}
