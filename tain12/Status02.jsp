<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>圣堂之战</title>
</head>

<body>
<jsp:useBean id="Status02" class="com.sccc.Status02" scope="session"/>
<h1>战胜一切未知因素，走上巅峰！</h1>
<form action="showInfo02.jsp" method="post">
  <%
      String test = Status02.getZhuangTai().get(0);
      ArrayList<String> xuanXiang = Status02.getTiMu().get(test);
      out.println("<h1>" + test + ",请做出抉择！</h1>");

    for(int i=0;i<4;i++){
	String neiRong=xuanXiang.get(i);
	String num=String.valueOf(i);
	out.print("<p><input type='radio' name='phone' value='+"+num+"'>"+neiRong+"</input></p>");
	
   }
 %>
<button>提交</button>
</form>
</body>
