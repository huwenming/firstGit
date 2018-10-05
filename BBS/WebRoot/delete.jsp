<%@page language="java" import="java.util.*, com.bjsxt.bbs.*, java.sql.*" pageEncoding="gb2312"%>
<%@include file="_sessionCheck.jsp" %>
<html>
<head>
<%
	request.setCharacterEncoding("gb2312");
 %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<meta http-equiv="Expires" content="0">
<meta name="description" content="Java编程,Java论坛,Cjsdn,Java论坛程序,在线图书馆,Spring Struts Webwork框架深入,XMLHTTP AJAX开发,Java Web开发,Java企业应用,Java设计模式,Java开源框架,Java应用服务器,Rich Client讨论,JavaScript编程,敏捷软件开发XP TDD,软件配置管理,软件测试,项目管理UML,数据库,精通Hibernate">
<meta name="keywords" content="Java编程 Java论坛 Java论坛程序 Spring框架 AJAX技术 在线图书馆 Agile敏捷软件开发 中国Java开发区 Cjsdn">
<!--<base href="http://www.cjsdn.net/">-->
<base href=".">
<title>中国Java开发网 - Java SE 综a合讨论区</title>
<%!
	private void delete(Connection conn, int id) {
		String sql = "select * from bbs where pid =" + id;
		Statement stmt = DB.getStmt(conn);
		ResultSet rs = DB.executeQuery(stmt, sql);
		try {
			while(rs.next()) {
				delete(conn, rs.getInt("id"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		int s = DB.executeUpdate(conn, "delete from bbs where id=" + id);
	}
 %>
 <%
 	int id = Integer.parseInt(request.getParameter("id"));
 	int pid = Integer.parseInt(request.getParameter("pid"));
 	Connection conn = null;
 	
 	
 	
 	Statement stmt = null;
 	int count = 0;
 	ResultSet rsCount = null;
 	try {
 		conn = DB.getConn();
 		conn.setAutoCommit(false);
 		delete(conn, id);
 		String sql = "select count(*) from bbs where pid=" + pid;
 		stmt = DB.getStmt(conn);
 		rsCount = DB.executeQuery(stmt, sql);
 		rsCount.next();
 		count = rsCount.getInt(1);
 		if(count <= 0) {
 			DB.executeUpdate(conn, "update bbs b set b.isleaf=0 where id=" + pid);
 		}
 		conn.commit();
 	} catch (SQLException e) {
 		e.printStackTrace();
 	} finally {
 		conn.setAutoCommit(true);
	 	DB.close(rsCount);
	 	DB.close(stmt);
	 	DB.close(conn);
 	}
 	
 	
  %>
</head>
<body >
删除成功！！！3秒后跳转到主题帖<%response.setHeader("refresh","1,bbs.jsp"); %>
</body>
</html>