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
		  String sql="update grinf set �Ա�=('" + name1 + "'),����=('" + home + "'),��������=('" + comeday + "')," +
		  		"����=('" + nation + "'),�����ڵ�=('" + address + "'),������ò=('" + zzmm + "'),���ѧ��=('" + study + "'),��ѧרҵ=('" + sstudy + "')," +
		  				"��ҵԺУ=('" + school + "'),��ҵʱ��=('" + day + "'),�ֻ�=('" + th + "'),��������=('" + emi + "'),��ְ����=('" + work + "')," +
		  						"���֤��=('" + identity + "') where ���=('" + type1 + "')";
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
	   System.out.print("ˢ�³ɹ�");
	 out.write("</script>");*/
	  response.sendRedirect("zengjia.jsp");

	}
	
}
