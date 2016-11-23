<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.sccc.GirlFriend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>赞美阳光！</title>
</head>
<body>

<% 
 GirlFriend gf=(GirlFriend)session.getAttribute("myGirlFriend");
 String phone=request.getParameter("phone");
 
 int shengQi=gf.getShengQi();
 int love=gf.getLove();

 
 
 if(phone.equals("0")){
	 shengQi=shengQi+10;
 }
 else if(phone.equals("1")){
	 shengQi=shengQi+30;
 }
 else if(phone.equals("2")){
	 love=love+30;
	 
 }
 else{
	 love=love+25;
	 
 }

 gf.setShengQi(shengQi);
 gf.setLove(love);
 
 
 if(gf.getShengQi()>30){
	 out.print("<h1>宏观世界开始坍塌，你陷入了深渊！");
	 
 }
 else{
	 out.print("<h1>女朋友的恐惧度为！"+gf.getShengQi()+"%");
	 

 if(gf.getLove()>20){
	 out.print("<h1>我爱你！Forever ever！");
 }
   out.print("<p><a href='Status02.jsp'></a></p>");
 
 }
 
 if(gf.getLove()>100){
	 out.print("<h1>两人会一直陪伴着走下去</h1>");
 }
 
%>

<p><a href="End.jsp">光明依然庇护着这个世界..</a></p>


</body>
