<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" pageEncoding="utf-8"%>

<html>
  <head>

  </head>
  
  <body>
  <%
           String user="root";
			String password="root";
			String url="jdbc:mysql://localhost:3306/jianli";
			String driver="com.mysql.jdbc.Driver";
			String type1=request.getParameter("action");
			try {
			Connection conn =null;
			Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(url, user, password);
            Statement statement=conn.createStatement();
            String sql="select *  from grinf where 编号=('" + type1 + "')";
            ResultSet rs=statement.executeQuery(sql);
         
           while(rs.next()){ 
         
     %> 
<table width="730" height="380" border="1" cellspacing="2" cellpadding="8" align="CENTER" >
<tr>
    <td colspan="2" width="200"><font color="#EAC1C1"> 姓名<input type="text" value="<%=rs.getString("姓名") %>" name="name"></font></td>
    <td colspan="2"><font color="#EAC1C1">性别：</font><input type="text" name="name1" value="<%=rs.getString("性别") %>" > </td>
    <td colspan="2" width="200"><font color="#EAC1C1">籍贯：</font><input type="text" value="<%=rs.getString("籍贯") %>" name="home"></td>
</tr>
<tr>        
    <td width="200" colspan="2"><font color="#EAC1C1">出生日期：</font><input type="text" value="<%=rs.getString("出生日期") %>" name="comeday"></td >
    <td colspan="2"><font color="#EAC1C1">民族：</font><input type="text" value="<%=rs.getString("民族") %>" id="nation"></td>
    <td  colspan="2"><font color="#EAC1C1">现所在地：</font><input type="text" value="<%=rs.getString("现所在地") %>" id="address"></td>
</tr>
<tr>         
    <td colspan="2"><font color="#EAC1C1">政治面貌：</font><input type="text" value="<%=rs.getString("政治面貌") %>"s></td>
    <td colspan="2"><font color="#EAC1C1">最高学历：</font><input type="text" value="<%=rs.getString("最高学历") %>" id="study"></td>
    <td colspan="2" ><font color="#EAC1C1">所学专业：</font><input type="text" value="<%=rs.getString("所学专业") %>" id="sstudy"></td>
</tr>
<tr>         
    <td colspan="3"><font color="#EAC1C1">毕业院校：</font><input type="text" value="<%=rs.getString("毕业院校") %>" id="school"></td>
    <td colspan="2" width="100"><font color="#EAC1C1">毕业时间：</font><input type="text" value="<%=rs.getString("毕业时间") %>" name="day"></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">手机：</font> <input type="text" value="<%=rs.getString("手机") %>" id="th"></td>
    <td colspan="3"><font color="#EAC1C1">电子邮箱：</font> <input type="text" value="<%=rs.getString("电子邮箱") %>" id="emi"></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">求职意向：</font><input type="text" value="<%=rs.getString("求职意向") %>" id="work"></td>
    <td colspan="3"><font color="#EAC1C1">身份证号：</font><input type="text" name="identity" value="<%=rs.getString("身份证号") %>"></td>
</tr>
<%}}catch(Exception e) {
		e.printStackTrace();
	}  %>
</table>
  </body>
</html>
