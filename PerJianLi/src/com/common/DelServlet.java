package com.common;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.dbconn;

/**
 * Servlet实现类UpdateServlet
 */

public class DelServlet extends HttpServlet {

    Connection conn=null;
    
protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    try {
     /*   Class.forName("com.mysql.jdbc.Driver"); // 加载数据库驱动，注册到驱动管理器
        String url = "jdbc:mysql://localhost:3306/jianli";// 数据库连接字符串
        String username = "root"; // 数据库用户名
        String password = "root"; // 数据库密码
        // 创建Connection连接
        Connection conn = DriverManager.getConnection(url, username, password);*/
        conn=dbconn.getConnection();
		  System.out.println(conn);
        String sql = "delete from grinf where 编号=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        String ID[]=request.getParameterValues("delid");
        if (ID.length>0){
            for(int i=0;i<ID.length;i++){
                ps.setInt(1,Integer.parseInt(ID[i]));  
                ps.addBatch();    
            }
        }
        ps.executeBatch();  
        ps.close(); 
        conn.close(); 
        
    } catch (Exception e) {
        e.printStackTrace();
    }
 //   request.getRequestDispatcher("zhuye.jsp").forward(request, response);
    response.sendRedirect("zhuye.jsp");
}

}