<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.sccc.GirlFriend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人生的路看不清...</title>
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
	 love=love+15;
	 shengQi=shengQi+10;
 }

 gf.setShengQi(shengQi);
 gf.setLove(love);
 
 
 if(gf.getShengQi()>20){
	 out.print("<h1>前方高能预警，非战斗人员立即撤退！");
	 
 }
 else{
	 out.print("<h1>目前，女朋友的怒气为:"+gf.getShengQi()+"%");
	 

 if(gf.getLove()>30){
	 out.print("<h1>哎哟，不错哦！ 不管你怎么变，我还是爱你的！");
 }
   out.print("<p><a href='Status.jsp'></a></p>");
 
 }
 
 if(gf.getLove()>100){
	 out.print("<h1>恭喜你可以步入殿堂了</h1>");
 }
 
%>

<p><a href="Status01.jsp">满意吗？那么开始下一题</a></p>


</body>
