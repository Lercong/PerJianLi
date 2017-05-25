<%@ page language="java" import="java.util.*,java.sql.*,java.io.*,com.db.dbconn" pageEncoding="utf-8"%>
<%
           
			String type1=request.getParameter("action");
			session.setAttribute("type1",type1);  
			try {
			Connection conn =null;
			 conn = dbconn.getConnection();
            Statement statement=conn.createStatement();
            String sql="select *  from grinf where 编号=('" + type1 + "')";
            ResultSet rs=statement.executeQuery(sql);
         
           while(rs.next()){ 
         String a=rs.getString("姓名");
 
     %> 
<html>
  <head>
   
  <title>编辑</title>
   <script type="text/javascript">
    function tijiao(){
	var name = document.getElementById("username").value;
	var c="<%=a%>";
	if(name!=c){
	alert("用户名不能修改");	
		return false;
	}
	return true;
	}
	</script>
  </head>
  
  <body>
  <form action="BianJi" method="post" onsubmit="return tijiao()">
 
<table width="730" height="380" border="1" cellspacing="2" cellpadding="8" align="CENTER" >
<tr>
    <td colspan="2" width="200"><font color="#EAC1C1"> 姓名</font><input type="text" value="<%=rs.getString("姓名") %>" name="name" id="username"></td>
    <td colspan="2"><font color="#EAC1C1">性别：</font><input type="radio" name="name1" value="男" checked><font color="FDF3FC">男</font>
        <input type="radio" name="name1" value="女" checked><font color="FDF3FC">女</font></td>
     <td colspan="2" width="200"><font color="#EAC1C1">籍贯：</font><input type="text" value="<%=rs.getString("籍贯") %>" name="home"></td>
</tr>
<tr>        
    <td width="200" colspan="2"><font color="#EAC1C1">出生日期：</font><input type="text" value="<%=rs.getString("出生日期") %>" name="comeday"></td >
    <td colspan="2"><font color="#EAC1C1">民族：</font><input type="text" value="<%=rs.getString("民族") %>" name="nation"></td>
    <td  colspan="2"><font color="#EAC1C1">现所在地：</font><input type="text" value="<%=rs.getString("现所在地") %>" name="address"></td>
</tr>
<tr>         
    <td colspan="2"><font color="#EAC1C1">政治面貌：</font><select name="zzmm" style="width:50px">
    <option value="团员">团员
    <option value="党员">党员
    <option value="其他" selected>其他
   </select></td>
    <td colspan="2"><font color="#EAC1C1">最高学历：</font><input type="text" value="<%=rs.getString("最高学历") %>" name="study"></td>
    <td colspan="2" ><font color="#EAC1C1">所学专业：</font><input type="text" value="<%=rs.getString("所学专业") %>" name="sstudy"></td>
</tr>
<tr>         
    <td colspan="3"><font color="#EAC1C1">毕业院校：</font><input type="text" value="<%=rs.getString("毕业院校") %>" name="school"></td>
    <td colspan="2" width="100"><font color="#EAC1C1">毕业时间：</font><input type="text" value="<%=rs.getString("毕业时间") %>" name="day"></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">手机：</font> <input type="text" value="<%=rs.getString("手机") %>" name="th"></td>
    <td colspan="3"><font color="#EAC1C1">电子邮箱：</font> <input type="text" value="<%=rs.getString("电子邮箱") %>" name="emi"></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">求职意向：</font><input type="text" value="<%=rs.getString("求职意向") %>" name="work"></td>
    <td colspan="3"><font color="#EAC1C1">身份证号：</font><input type="text" name="identity" value="<%=rs.getString("身份证号") %>"></td>
</tr>
<%}}catch(Exception e) {
		e.printStackTrace();
	}  %>	
</table>

<center><input type="submit" value="提交"  ></center>
</form>
  </body>
</html>
