<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示</title>

<jsp:useBean id="myGirlFriend" class="com.sccc.GirlFriend" scope="session"/>

<jsp:setProperty property="*" name="myGirlFriend"/>

<!--  
<jsp:setProperty name="myGirlFriend" property="yanZhi"/>
<jsp:setProperty name="myGirlFriend" property="tiZhong"/>
<jsp:setProperty name="myGirlFriend" property="shenGao"/>
<jsp:setProperty name="myGirlFriend" property="shengQi"/>
<jsp:setProperty name="myGirlFriend" property="love"/>
-->

</head>
<body>
<p>颜&nbsp;值：<jsp:getProperty name="myGirlFriend" property="yanZhi"/> 分    </p>
<p>体&nbsp;重：<jsp:getProperty name="myGirlFriend" property="tiZhong"/> kg </p>
<p>身&nbsp;高：<jsp:getProperty name="myGirlFriend" property="shenGao"/> cm </p>
<p>怒气值：<jsp:getProperty name="myGirlFriend" property="shengQi"/>  </p>
<p>爱意值：<jsp:getProperty name="myGirlFriend" property="love"/>  </p>

<p><a href="Status.jsp">开始测试！</a> </p>

 </body>
</html>