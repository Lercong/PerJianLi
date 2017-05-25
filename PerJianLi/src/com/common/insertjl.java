package com.common;


import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ConnectIOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.bean.XinXi;
import com.db.dbconn;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


@SuppressWarnings({ "serial", "unused" })
public class insertjl extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws
	ServletException, IOException {
		java.sql.Connection conn = null;
		java.sql.PreparedStatement pstmt=null;;

		//public static void main(String[] args) throws SQLException {
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");

		String name=request.getParameter("name");
		String name1=request.getParameter("name1");
		String home=request.getParameter("home");
		String comeday=request.getParameter("comeday");
		String nation=request.getParameter("nation");
		String address=request.getParameter("address");
		String zzmm=request.getParameter("zzmm");
		String study=request.getParameter("study");
		String sstudy=request.getParameter("sstudy");
		String school=request.getParameter("school");
		String day=request.getParameter("day");
		String th=request.getParameter("th");
		String emi=request.getParameter("emi");
		String work=request.getParameter("work");
		String identity=request.getParameter("identity");
		XinXi xinxi=new XinXi();
		xinxi.setName(name);
		xinxi.setHome(home);
		xinxi.setHome(name1);
		xinxi.setName(comeday);
		xinxi.setHome(nation);
		xinxi.setHome(address);
		xinxi.setName(zzmm);
		xinxi.setHome(study);
		xinxi.setHome(sstudy);
		xinxi.setName(school);
		xinxi.setHome(day);
		xinxi.setHome(th);
		xinxi.setName(emi);
		xinxi.setHome(work);
		xinxi.setHome(identity);
		
		/*String user="root";
		String password="root";
		String url="jdbc:mysql://localhost:3306/jianli";*/
	
	  try {	
		  /*try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		  String sqlzj="insert into grinf (姓名,性别,籍贯,出生日期,民族,现所在地,政治面貌,最高学历,所学专业,毕业院校,毕业时间,手机,电子邮箱,求职意向,身份证号) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		  conn=dbconn.getConnection();
		  System.out.println(conn);
		  pstmt=conn.prepareStatement(sqlzj);
		  pstmt.setString(1,name);
		  pstmt.setString(2,name1);
		  pstmt.setString(3,home);
		  pstmt.setString(4,comeday);
		  pstmt.setString(5,nation);
		  pstmt.setString(6,address);
		  pstmt.setString(7,zzmm);
		  pstmt.setString(8,study);
		  pstmt.setString(9,sstudy);
		  pstmt.setString(10,school);
		  pstmt.setString(11,day);
		  pstmt.setString(12,th);
		  pstmt.setString(13,emi);
		  pstmt.setString(14,work);
		  pstmt.setString(15,identity);

	
		  pstmt.executeUpdate();	
		  System.out.println("成功");
		  System.out.println(name1);
		  System.out.println(zzmm);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
			}
	 /* PrintWriter out = response.getWriter();
	   out.write("<script type=\"text/javascript\">");
	   out.write("window.parent.location.reload()");
	   System.out.print("刷新成功");
	 out.write("</script>");*/
	  response.sendRedirect("zengjia.jsp");

	}
	
}


      
