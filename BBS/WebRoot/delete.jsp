<%@page language="java" import="java.util.*, com.bjsxt.bbs.*, java.sql.*" pageEncoding="gb2312"%>
<%@include file="_sessionCheck.jsp" %>
<html>
<head>
<%
	request.setCharacterEncoding("gb2312");
 %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<meta http-equiv="Expires" content="0">
<meta name="description" content="Java���,Java��̳,Cjsdn,Java��̳����,����ͼ���,Spring Struts Webwork�������,XMLHTTP AJAX����,Java Web����,Java��ҵӦ��,Java���ģʽ,Java��Դ���,JavaӦ�÷�����,Rich Client����,JavaScript���,�����������XP TDD,������ù���,�������,��Ŀ����UML,���ݿ�,��ͨHibernate">
<meta name="keywords" content="Java��� Java��̳ Java��̳���� Spring��� AJAX���� ����ͼ��� Agile����������� �й�Java������ Cjsdn">
<!--<base href="http://www.cjsdn.net/">-->
<base href=".">
<title>�й�Java������ - Java SE ��a��������</title>
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
ɾ���ɹ�������3�����ת��������<%response.setHeader("refresh","1,bbs.jsp"); %>
</body>
</html>