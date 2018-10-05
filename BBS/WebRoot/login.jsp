<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username != null && username.equals("admin")) {
		if(password != null && password.equals("admin")) {
		
			session.setAttribute("checkLogin", "true");
			response.sendRedirect("bbs.jsp");
		}
	}
 %>
  </head>
  
  <body>
   <form action="login.jsp" method="post">
   	<input type="text" name="username">
   	<input type="password" name="password">
   	<input type="submit" value="login">
   </form>
  </body>
</html>
