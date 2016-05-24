<%@page import="java.util.ArrayList"%>
<%@page import="com.shxt.lesson3.beans.Student"%>
 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% 
//请求（utf-8这种形式发送的请求）
request.setCharacterEncoding("utf-8");
String u = request.getParameter("username");
String p = request.getParameter("password");
String result = "失败";
if (u.equals("sa") && p.equals("123")) {
	result = "成功";
	//进行页面的跳转
	
	/* ArrayList<Map<String, String>> myList = new ArrayList<Map<String, String>>();
	Map<String, String> map1 = new HashMap<String, String>();
	map1.put("code", "1");
	map1.put("name", "zhangsan");
	
	Map<String, String> map2 = new HashMap<String, String>();
	map2.put("code", "2");
	map2.put("name", "lisi");
	
	myList.add(map1);
	myList.add(map2); */
	
	ArrayList<Student> myList = new ArrayList<Student>();
	myList.add(new Student("101", "zhangsan"));
	myList.add(new Student("102", "lisi"));
	
	//[1]请求转发（由request发起，并且可以携带request参数）
	//场景：A.jsp（form表单提交） --> B.jsp（请求转发） --> C.jsp
	//(1)C页面可以获取到A页面的值
	//(2)请求转发：浏览器的地址栏不变
	//(3)请求转发可以不把Object类型的参数变为字符串传递，而是直接传递object
	 //request.setAttribute("age", myList);
	 //request.getRequestDispatcher("main.jsp").forward(request, response);
	
	//[2]重定向（由response（响应）发起）
	//场景：A.jsp（form表单提交） --> B.jsp（重定向） --> C.jsp
	//(1)C页面将【不能】获取A的值
	//(2)重定向：地址栏改变为C页面（响应）
	response.sendRedirect("main.jsp? " );
	
	
}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
登录<%=result %>
</body>
</html>