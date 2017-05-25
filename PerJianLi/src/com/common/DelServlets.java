package com.common;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.dbconn;

public class DelServlets extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelServlets() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn=null;
		 try {
		     
		        conn=dbconn.getConnection();
				  System.out.println("单个删除数据库链接"+conn);
				  String type1=request.getParameter("action");
				  System.out.println(type1);
		        String sql = "delete from grinf where 编号 = ?";
		        PreparedStatement ps = conn.prepareStatement(sql);
		        ps.setInt(1,Integer.parseInt(type1));
		        ps.executeUpdate();
		      
		        response.sendRedirect("/PerJianLi/zhuye.jsp");
		    } catch (Exception e) {
		        e.printStackTrace();
		        response.sendRedirect("/PerJianLi/file.jsp");
		    }
		//response.sendRedirect("./zhuye.jsp");
		//response.sendRedirect("zhuye.jsp");
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*response.sendRedirect("./zhuye.jsp");
		response.sendRedirect("zhuye.jsp");
		response.sendRedirect("/zhuye.jsp");
		doPost(request,response);*/
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
