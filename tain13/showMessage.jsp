<%@page import="com.sccc.MessageBean" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展览</title>
</head>
<body background="img/show.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >
   <%
      ArrayList wordlist=(ArrayList) application.getAttribute("wordlist");
        if(wordlist==null||wordlist.size()==0)
          out.print("没有信息可显示 ！");
          
        else{
        	for(int i=wordlist.size()-1;i>=0;i--){
        	MessageBean mm=(MessageBean)wordlist.get(i); 
        	
    %>
        签约者: <%= mm.getAuthor() %>
    <p> 签署时间:<%=mm.getTime() %> </p>
    <p> 条约标题:<%=mm.getTitle() %>  </p>
    
   <p>
      条约内容:
      <textarea rows="8" cols="30" readonly>
      <%=mm.getContent()%>      
      </textarea>
   </p>
  <a href="messageBoard.jsp">我要说一句！</a>
  <hr width="90%">
  
  <%       	
        	}
        }
   
   %>
   
</body>
</html>