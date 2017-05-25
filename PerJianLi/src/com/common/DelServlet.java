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
 * Servletʵ����UpdateServlet
 */

public class DelServlet extends HttpServlet {

    Connection conn=null;
    
protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    try {
     /*   Class.forName("com.mysql.jdbc.Driver"); // �������ݿ�������ע�ᵽ����������
        String url = "jdbc:mysql://localhost:3306/jianli";// ���ݿ������ַ���
        String username = "root"; // ���ݿ��û���
        String password = "root"; // ���ݿ�����
        // ����Connection����
        Connection conn = DriverManager.getConnection(url, username, password);*/
        conn=dbconn.getConnection();
		  System.out.println(conn);
        String sql = "delete from grinf where ���=?";
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