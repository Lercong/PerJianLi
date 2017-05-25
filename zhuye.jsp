<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>个人简历</title>
   <style type="text/css">
  body{
  margin:0px;padding:0px;
  background:#F56E6E;
  }
  
  #header{
  position:absolute;
  width:100%;
  height:20%;
  top:0px;
  left:0px;
  background:#B16C6C;
  }
  #middle{
  position:absolute;
  width:100%;
  height:80%;
  top:20%;
  left:0px;
  background:#E9AE7A;
  }
  #left1{
  position:absolute;
  width:40%;
  height:100%;
  top:0px;;
  left:0px;
  background:#F3F09B;
  }
  #left2{
  position:absolute;
  width:40%;
  height:90%;
  top:10%;
  left:0px;
  background:#F3F09B;
  }
   #right{
  position:absolute;
  width:60%;
  height:100%;
  top:0px;;
  left:40%;
  background:#E9AE7A;
  }
  .s1{font-size:30pt;
     color:#521B3A;}
  /* #list{
  position:absolute;
  width:80%;
  height:auto;
  background:#EB8C8C; 
  display:none; */
  </style>
  </head>
  
  <body>
   <div id="header"><center><p class="s1">个  人  简   历</p></center></div>
   <div id="middle">
   <div id="left1"> <%@ include file="caidan.jsp" %> </div>
   <%-- <div id="left2"> <%@ include file="table.jsp" %>  --%>
  <!--  <iframe src="" frameborder="0" scrolling="yes"  width=100% height=100% name="contentFrame1"></iframe></div> -->
   
   
   <div id="right">
    <iframe src="jianli.jsp" frameborder="0" scrolling="yes"  width=100% height=100% name="contentFrame" id="myframe"></iframe>
    
    </div>
   </div>
  </body>
</html>
