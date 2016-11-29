<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>协议</title>
</head>
<body background="img/bg01.jpg" 
style="background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >
  <form action="AddMessageServlet" method="post">
              签署人：<input type="text" name="author" size="30">
    <br><br>
            条约标题：<input type="text" name="title" size="30">
    <br>
          协议内容：<textarea name="content" rows="8" cols="30">
             </textarea>       
  <p>
  <input type="submit" value="提交">
  <input type="reset" value="废除">
  <a href="showMessage.jsp">查看</a>
  </form>
</body>
</html>