<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询</title>
  </head>
 
  <body>
  <center>
  <form action="XianShiCZ" method="post">
  <p>姓名<input type="text" name="name"></p>
  <p>籍贯<input type="text" value="" name="home"></p>
  <p>民族<input type="text" value="" name="nation"></p>
  <p>性别<input type="radio" name="name1" value="男" checked>男
            <input type="radio" name="name1" value="女" checked>女 
            <input type="radio" name="name1" value="" checked>不选 
             
            </p>
  <p>政治面貌<select name="zzmm" style="width:50px">
          <option value="团员">团员
          <option value="党员">党员
          <option value="其他">其他
          <option value="" selected>不选
          </select>    
          </p>      
  <!-- <table width="730" height="380" border="1" cellspacing="1" cellpadding="8" align="CENTER" >
    <tr>姓名<input type="text" name="name">
    <td colspan="2" width="200"><font color="#EAC1C1"> 姓名<input type="text" name="name"></font></td>
    </tr>
    <tr>
    <td colspan="2"><font color="#EAC1C1">性别</font><input type="radio" name="name1" value="男" checked><font color="FDF3FC">男</font>
        <input type="radio" name="name1" value="女" checked><font color="FDF3FC">女</font></td>
        </tr>
        <tr>
     <td colspan="2" width="200"><font color="#EAC1C1">籍贯</font><input type="text" value="" name="home"></td>
     </tr>
<tr>        
   
    <td colspan="2"><font color="#EAC1C1">民族</font><input type="text" value="" name="nation"></td>
    
</tr>
<tr>         
    <td colspan="2"><font color="#EAC1C1">政治面貌</font><select name="zzmm" style="width:50px">
    <option value="团员">团员
    <option value="党员">党员
    <option value="其他" selected>其他
   </select></td>
   </tr>
   </table> -->
   <input type="submit" value="查询">
   </form>
   </center>
   </body>
   </html>
   
    
                     

