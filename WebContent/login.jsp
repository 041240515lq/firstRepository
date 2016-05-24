<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% 
//【1】什么是请求：向服务器发送一次数据，称为请求，如果发送的是一个表单，称为表单请求
//场景：login.jsp(form --> valid.jsp) 称：login.jsp是请求页面、valid.jsp叫被请求页面
//	 login.jsp会发送一个request对象到valid.jsp
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 应用/可扩展的-万维网-表单-统一资源定位器编码方式 ，它是默认的方式-->
<form action="valid.jsp" method="post" enctype="application/x-www-form-urlencoded" >
	账号：<input name="username" /> <br />
	口令：<input name="password" /> <br />
	<input type="submit" value="登录" />
</form>
</body>
</html>