package com.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.dbconn;
import com.bean.XinXi;

import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("serial")
public class XianShiCZ extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		Connection conn=null;
		java.sql.PreparedStatement pstmt=null;
		XinXi xinxi=null;

		String name=request.getParameter("name");  		    
        String home=request.getParameter("home"); 
        String nation=request.getParameter("nation");
        String name1=request.getParameter("name1");
        String zzmm=request.getParameter("zzmm");
        conn=dbconn.getConnection();
        try{
        String sql="select * from grinf where 1=1";
        if(name != null){  
           sql+=" and 姓名  like '%"+name+"%'"; 	            
       }  
	  if(home!=null){
		  sql+=" and 籍贯  like '%"+home+"%'";
	  }
	  if(nation!=null){
	  sql+=" and 民族  like '%"+nation+"%'";
	  }
	  if(name1!="不选"){
	  sql+=" and 性别  like '%"+name1+"%'";
	  }
	  if(zzmm!="不选"){
	  sql+=" and 政治面貌  like '%"+zzmm+"%'";
	  }
	  System.out.println(name);
	  System.out.println(name1);
	  System.out.println(zzmm);
	  System.out.println(home);
	  System.out.println(nation);
	  
	  List<XinXi> xinxiLt=new ArrayList<XinXi>();
        Statement statement=conn.createStatement();
        ResultSet rs1=statement.executeQuery(sql);
        
        while(rs1.next()){
    	    xinxi=new XinXi();
            xinxi.setId(rs1.getString(1)); 
            xinxi.setName(rs1.getString(2));
            xinxiLt.add(xinxi);
            System.out.println("查找结果编号"+rs1.getString(1));
        }
        request.setAttribute("xinxiLt", xinxiLt);
        System.out.println(xinxiLt);
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
			}
 
        request.getRequestDispatcher("chazhaojg.jsp").forward(request, response); 
		        }
	}
	

