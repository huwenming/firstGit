<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*, com.bjsxt.bbs.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>回复</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String cont = request.getParameter("cont");
		String sql = "update bbs b set b.title=?,b.cont=?,b.pdate=now() where b.id=?";
		Connection conn = DB.getConn();;
		PreparedStatement pstmt = null;
		pstmt = DB.preparedStmt(conn, sql);
		pstmt.setString(1, title);
		pstmt.setString(2, cont);
		pstmt.setInt(3, id);
		pstmt.executeUpdate();
		
		DB.close(pstmt);
		DB.close(conn);
	 %>

  </head>
  
  <body>
    更新成功,3秒之后跳转到主题帖页面 <br>
   <%
   	response.setHeader("refresh","1, bbs.jsp");
    %>
  </body>
</html>
