<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>新建</title>
  <script type="text/javascript">
    function tijiao(){

	var name = document.getElementById("username").value;
	var name1 = document.getElementById("name1").value;
	var th = document.getElementById("th").value;
	var emi = document.getElementById("emi").value;
	if(name=="")
	{
		alert("用户名不能为空");	
		return false;
	}
	if(name1=="")
	{
		alert("性别不能为空");	
		return false;
	}
	if(th.length<11)
	{
		alert("电话号码必须为11位");	
		return false;
	}
	if(emi=="")
	{
		alert("电子邮件必须填写");	
		return false;
	}
	 return true;

}
	


</script>
  </head>
  
  <body>
  <form action="insertjl" method="post" onsubmit="return tijiao()">
   <table width="730" height="380" border="1" cellspacing="1" cellpadding="8" align="CENTER" >
<tr>
    <td colspan="2" width="200"><font color="#EAC1C1"> 姓名<input type="text" name="name" id="username"></font></td>
    <td colspan="2"><font color="#EAC1C1">性别</font><input type="radio" name="name1" value="男" id="name1" checked><font color="FDF3FC">男</font>
        <input type="radio" name="name1" value="女" id="name1" checked><font color="FDF3FC">女</font></td>
     <td colspan="2" width="200"><font color="#EAC1C1">籍贯</font><input type="text" value="" name="home"></td>
</tr>
<tr>        
    <td width="200" colspan="2"><font color="#EAC1C1">出生日期<input type="text" name="comeday"></font></td >
    <td colspan="2"><font color="#EAC1C1">民族</font><input type="text" value="" name="nation"></td>
    <td  colspan="2"><font color="#EAC1C1">现所在地</font><input type="text" value="" name="address"></td>
</tr>
<tr>         
    <td colspan="2"><font color="#EAC1C1">政治面貌</font><select name="zzmm" style="width:50px">
    <option value="团员">团员
    <option value="党员">党员
    <option value="其他" selected>其他
   </select></td>
    <td colspan="2"><font color="#EAC1C1">最高学历</font><input type="text" value="" name="study"></td>
    <td colspan="2" ><font color="#EAC1C1">所学专业</font><input type="text" value="" name="sstudy"></td>
</tr>
<tr>         
    <td colspan="3"><font color="#EAC1C1">毕业院校</font><input type="text" value="" name="school"></td>
    <td colspan="2" width="100"><font color="#EAC1C1">毕业时间<input type="text" name="day"></font></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">手机</font> <input type="text" value="" name="th" id="th"></td>
    <td colspan="3"><font color="#EAC1C1">电子邮箱</font> <input type="text" value="" name="emi" id="emi"></td>
</tr>
<tr>
    <td colspan="3"><font color="#EAC1C1">求职意向</font><input type="text" value="" name="work"></td>
    <td colspan="3"><font color="#EAC1C1">身份证号</font><input type="text" name="identity"></td>
</tr>
</table>

 <center><div id="low"><input type="submit" value="提交" >
<input type="reset" value="重置" ></div></center>
</form>
  </body>
</html>
