package com.common;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ConnectIOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.bean.XinXi;
import com.db.dbconn;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


@SuppressWarnings({ "serial", "unused" })
public class BianJi extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws
	ServletException, IOException {
		java.sql.Connection conn = null;
		java.sql.PreparedStatement pstmt;

		//public static void main(String[] args) throws SQLException {
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");

		HttpSession session=request.getSession();
		String type1=(String) session.getAttribute("type1");
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
		
		Statement st = null;
		boolean flag = false;  
	  try {	
	
		  conn=dbconn.getConnection();
		  System.out.println(conn);
		  String sql="update grinf set 性别=('" + name1 + "'),籍贯=('" + home + "'),出生日期=('" + comeday + "')," +
		  		"民族=('" + nation + "'),现所在地=('" + address + "'),政治面貌=('" + zzmm + "'),最高学历=('" + study + "'),所学专业=('" + sstudy + "')," +
		  				"毕业院校=('" + school + "'),毕业时间=('" + day + "'),手机=('" + th + "'),电子邮箱=('" + emi + "'),求职意向=('" + work + "')," +
		  						"身份证号=('" + identity + "') where 编号=('" + type1 + "')";
		  st = conn.createStatement(); 
			int i = st.executeUpdate(sql);  
            if(i>=1){  
                flag=true;  
            }  	
		  System.out.println(type1);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
			}
	  /*PrintWriter out = response.getWriter();
	   out.write("<script type=\"text/javascript\">");
	   out.write("window.parent.location.reload()");
	   System.out.print("刷新成功");
	 out.write("</script>");*/
	  response.sendRedirect("zengjia.jsp");

	}
	
}
