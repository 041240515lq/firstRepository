<%@page import="java.util.ArrayList"%>
<%@page import="com.shxt.lesson3.beans.Student"%>
 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<% 
String u = request.getParameter("username");
String p = request.getParameter("password");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
主页面
<%=u %><br />
<%=p %><br />
 

</body>
</html>