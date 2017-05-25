<%@ page language="java" import="java.util.*,java.sql.*,com.bean.XinXi,java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
   <%--  <%
    response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
            String user="root";
			String password="root";
			String url="jdbc:mysql://localhost:3306/jianli";
			String driver="com.mysql.jdbc.Driver";
			String a,b;
		    String name=request.getParameter("name");  		    
	        String home=request.getParameter("home"); 
	        String nation=request.getParameter("nation");
	        String name1=request.getParameter("name1");
	        String zzmm=request.getParameter("zzmm");
			try {
			Connection conn =null;
			Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(url, user, password);
            Statement statement=conn.createStatement();
          
            String sql="select * from grinf where 1=1";
             if(name != null && !name.trim().isEmpty()){  
	            sql+=" and 姓名  like '%"+name+"%'"; 	            
	        }  
		  if(home!=null&&!home.trim().isEmpty()){
			  sql+=" and 籍贯  like '%"+home+"%'";
		  }
		  if(nation!=null&&nation.trim().isEmpty()){
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
            ResultSet rs=statement.executeQuery(sql);
            
   %> --%>
   
   <table width="90%" border="0" cellspacing="0" cellpadding="2" align="center" id="table" align="CENTER">
     <tr>
     <td>姓名</td>
     <td></td>
     </tr>
     <%-- <%while(rs.next()){
     a=rs.getString(1);
     b=rs.getString(2);    
     session.setAttribute("a",a);                                                                               
     %> --%> 
     
    
  
     <%
     ArrayList<XinXi> xinxiLt = (ArrayList<XinXi>)request.getAttribute("xinxiLt");
     System.out.println("selvert数据"+request.getAttribute("xinxiLt"));
     System.out.println("接收数据"+xinxiLt);
     if(xinxiLt == null || xinxiLt.size() < 1)   
                            out.print("没有数据!");   
                     else{  
                           for(XinXi xinxi : xinxiLt){  
                           String a=xinxi.getId();
                           session.setAttribute("a", a);
                           System.out.println("ID"+a);
     
     %>

<tr>
 
      <td><%-- <%=b %> --%><%=xinxi.getName() %></td>
      <td><a href="jianli.jsp?action=${a}"><img border="0" name="cart">查看</a></td>
</tr><%}} %>
     <%--  <%  }
    }catch(Exception e) {
		e.printStackTrace();
	} %> --%>

     </table>
    
  </body>
</html>
