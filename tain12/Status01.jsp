<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人类心理研究</title>
</head>

<body>
<jsp:useBean id="Status01" class="com.sccc.Status01" scope="session"/>
<h1>蓝色预警！！！</h1>
<form action="showInfo01.jsp" method="post">
  <%
      String test = Status01.getZhuangTai().get(0);
      ArrayList<String> xuanXiang = Status01.getTiMu().get(test);
      out.println("<h1>" + test + "!你还能走多远?</h1>");

    for(int i=0;i<4;i++){
	String neiRong=xuanXiang.get(i);
	String num=String.valueOf(i);
	out.print("<p><input type='radio' name='phone' value='+"+num+"'>"+neiRong+"</input></p>");
	
   }
 %>
<button>提交</button>
</form>
</body>
