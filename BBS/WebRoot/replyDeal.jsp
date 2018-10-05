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
		int pid = Integer.parseInt(request.getParameter("id"));
		int rootid = Integer.parseInt(request.getParameter("rootid"));
		String title = request.getParameter("title");
		String cont = request.getParameter("cont");
		String sql = "insert into bbs values(null, ?, ?, ?, ?, now(),?)";
		Connection conn = DB.getConn();;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		//boolean autoCommit = conn.getAutoCommit();
		try {
			conn.setAutoCommit(false);
			
			pstmt = DB.preparedStmt(conn, sql);
			pstmt.setInt(1, pid);
			pstmt.setInt(2, rootid);
			pstmt.setString(3, title);
			pstmt.setString(4, cont);
			pstmt.setInt(5, 0);
			pstmt.executeUpdate();
		
		
			stmt = DB.getStmt(conn);
			stmt.executeUpdate("update bbs b set b.isleaf = 1 where id =" + pid);
			conn.commit();
			conn.setAutoCommit(true);
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(conn);
			DB.close(pstmt);
			DB.close(stmt);
		}
		
	 %>

  </head>
  
  <body>
    回复成功,3秒之后跳转到主题帖页面 <br>
   <%
   	response.setHeader("refresh","3, bbs.jsp");
    %>
  </body>
</html>
