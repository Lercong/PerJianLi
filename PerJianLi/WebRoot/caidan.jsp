 <%@ page language="java" import="java.util.*,java.sql.*,java.io.*,com.db.dbconn"pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'caidan.jsp' starting page</title>
    
    <script type="text/javascript">
    function CheckAll(elementsA, elementsB) {
        for (i = 0; i < elementsA.length; i++) {
            elementsA[i].checked = true;
        }
        if (elementsB.checked == false) {
            for (j = 0; j < elementsA.length; j++) {
                elementsA[j].checked = false;
            }
        }
    }
    //判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
    function checkdel(delid, formname) {
        var flag = false;
        for (i = 0; i < delid.length; i++) {
            if (delid[i].checked) {
                flag = true;
                break;
            }
        }
        if (!flag) {
            alert("请选择要删除的记录！");
            return false;
        } else {
            if (confirm("确定要删除吗？")) {
                formname.submit();
            }
        }
    }
</script>
 <script type="text/javascript">
    window.onload = function(){
        var tab = document.getElementsByTagName('table')[0];
         var allBtn=document.getElementById('btn');
        allBtn.onclick=function() { 
            var trs = tab.rows;
            for(var i = 0, len = trs.length; i < len; i++){
                var cell = trs[i].cells[2];
                var div1=document.getElementById("div1");  
                 if(cell.style.display== 'none'){
                    cell.style.display = '';
                    div1.style.display='';
                }else{
                    cell.style.display = 'none';
                    div1.style.display='none'; 
                
                } 
            }
        }
    }
  </script>
  </head>
  
  <body>
  <center>
    <p></p>
    <a href="jlmb.jsp" target="contentFrame" style="margin-right:50px">新建</a>
    <a href="chazhao.jsp" target="contentFrame" style="margin-right:50px">查询</a>
    <a href="jianli.jsp" target="contentFrame" id="btn">删除</a>
    </center>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <%          
			try {
			Connection conn =null;
			conn = dbconn.getConnection();
            Statement statement=conn.createStatement(); 
            String sql="select 编号,姓名  from grinf";
            ResultSet rs=statement.executeQuery(sql);
            String a,b;
   %>

   <form action="DelServlet" method="post" name="frm">
     <table width="90%" border="0" cellspacing="0" cellpadding="2" align="center" id="table" align="CENTER">
     <tr>
     <td>姓名</td>
     <td>操作</td>
     <td style="display:none"></td>
     </tr>
     <%while(rs.next()){
     a=rs.getString(1);
     b=rs.getString(2);
     session.setAttribute("a",a);                                                                               
     %> 
     <tr>     
      <td><%=b%></td>
      <td><a href="jianli.jsp?action=${a}" target="contentFrame">查看 </a>|<a href="xiugai.jsp?action=${a}" target="contentFrame"> 编辑  </a>|
      <a href="/PerJianLi/DelServlets?action=${a}"  method="post" > 删除</a></td>
      <td style="display:none"><input name="delid" type="checkbox" class="noborder" value="<%=a%>"></td>  
     </tr>   
    <%  }
    }catch(Exception e) {
		e.printStackTrace();
	} %>
	
	
	
     </table>     
     <footer >
     <div id="div1" style="display:none">
            <input name="checkbox" type="checkbox" class="noborder"
                onClick="CheckAll(frm.delid,frm.checkbox)"> [全选/反选] [
                <a style="color:red;cursor:pointer;" onClick="checkdel(frm.delid,frm)">删除</a>]
                </div>
            <div id="ch" style="display:none">
                <input name="delid" type="checkbox" value="0">
            </div>
            <!--层ch用于放置隐藏的checkbox控件，因为当表单中只是一个checkbox控件时，应用javascript获得其length属性值为undefine-->
        </footer> 
        </form>   
  </body>
</html>
