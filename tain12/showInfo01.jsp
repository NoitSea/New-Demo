<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.sccc.GirlFriend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>归乡之途如此漫长</title>
</head>
<body>

<% 
 GirlFriend gf=(GirlFriend)session.getAttribute("myGirlFriend");
 String phone=request.getParameter("phone");
 
 int shengQi=gf.getShengQi();
 int love=gf.getLove();

 
 
 if(phone.equals("0")){
	 love=love+10;
	 shengQi=shengQi+10;
 }
 else if(phone.equals("1")){
	 shengQi=shengQi+20;
 }
 else if(phone.equals("2")){
	 love=love+20;
	 
 }
 else{	
	 shengQi=shengQi+30;
 }

 gf.setShengQi(shengQi);
 gf.setLove(love);
 
 
 if(gf.getShengQi()>30){
	 out.print("<h1>那一刻，你才知道末日来临的景象是什么样的！");
	 
 }
 else{
	 out.print("<h1>女朋友的怒气为:"+gf.getShengQi()+"%");
	 

 if(gf.getLove()>30){
	 out.print("<h1>我还是爱你的，请继续加油吧！");
 }
   out.print("<p><a href='Status01.jsp'></a></p>");
 
 }
 
 if(gf.getLove()>100){
	 out.print("<h1>你的爱情会地久天长</h1>");
 }
 
%>

<p><a href="Status02.jsp">迎接终极考验吧！加油</a></p>


</body>
