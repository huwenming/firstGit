<%@ page language="java" import="java.util.*, com.bjsxt.bbs.*, java.sql.*" pageEncoding="gb2312"%>
<!-- saved from url=(0048)http://www.cjsdn.net/post/page?bid=1&sty=1&age=0 -->
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
<style type="text/css">
BODY {
	font-family: Tahoma, Georgia;
	color: #000000;
	font-size: 14px
}
P {
	font-family: Tahoma, Georgia;
	color: #000000;
	font-size: 14px
}
TD {
	font-family: Tahoma, Georgia;
	font-size: 14px;
	table-layout: fixed;
	word-break : break-all
}
TEXTAREA {
	font-family: Tahoma, Georgia;
	font-size: 14px
}
A {
	text-decoration: underline
}
A:link {
	color: #000000;
	text-decoration: underline
}
A:visited {
	color: #000080;
	text-decoration: underline
}
A:active {
	color: #FF0000;
	text-decoration: underline
}
A:hover {
	color: #FF0000;
	text-decoration: underline
}
.head {
	background-color: #007DC6;
	color: #ffffff;
	font-weight: bold;
}
.neck {
	background-color: #d1d9e2
}
.odd {
	background-color: #e3e3e3
}
.even {
	background-color: #f7f7f7
}
.board {
	background-color: #D6DBE7
}
.nav {
	text-decoration: underline;
	color: #000000
}
.nav:link {
	text-decoration: underline;
	color: #000000
}
.nav:visited {
	text-decoration: underline;
	color: #000000
}
.nav:active {
	text-decoration: underline;
	color: #FF0000
}
.nav:hover {
	text-decoration: none;
	color: #FF0000
}
.topic {
	text-decoration: none
}
.topic:link {
	text-decoration: none;
	color: #000000
}
.topic:visited {
	text-decoration: none;
	color: #000080
}
.topic:active {
	text-decoration: none;
	color: #FF0000
}
.topic:hover {
	text-decoration: underline;
	color: #FF0000
}
.ilink {
	text-decoration: underline;
	color: #0000FF
}
.ilink:link {
	text-decoration: underline;
	color: #0000FF
}
.ilink:visited {
	text-decoration: underline;
	color: #004080
}
.ilink:active {
	text-decoration: underline;
	color: #FF0000
}
.ilink:hover {
	text-decoration: underline;
	color: #FF0000
}
.mod {
	text-decoration: none;
	color: #000000
}
.mod:link {
	text-decoration: none;
	color: #000000
}
.mod:visited {
	text-decoration: none;
	color: #000080
}
.mod:active {
	text-decoration: none;
	color: #FF0000
}
.mod:hover {
	text-decoration: underline;
	color: #FF0000
}
.thd {
	text-decoration: none;
	color: #808080
}
.thd:link {
	text-decoration: underline;
	color: #808080
}
.thd:visited {
	text-decoration: underline;
	color: #808080
}
.thd:active {
	text-decoration: underline;
	color: #FF0000
}
.thd:hover {
	text-decoration: underline;
	color: #FF0000
}
.curpage {
	text-decoration: none;
	color: #FFFFFF;
	font-family: Tahoma;
	font-size: 9px
}
.page {
	text-decoration: none;
	color: #003063;
	font-family: Tahoma;
	font-size: 9px
}
.page:link {
	text-decoration: none;
	color: #003063;
	font-family: Tahoma;
	font-size: 9px
}
.page:visited {
	text-decoration: none;
	color: #003063;
	font-family: Tahoma;
	font-size: 9px
}
.page:active {
	text-decoration: none;
	color: #FF0000;
	font-family: Tahoma;
	font-size: 9px
}
.page:hover {
	text-decoration: none;
	color: #FF0000;
	font-family: Tahoma;
	font-size: 9px
}
.subject {
	font-family: Tahoma, Georgia;
	font-size: 12px
}
.text {
	font-family: Tahoma, Georgia;
	color: #000000;
	font-size: 12px
}
.codeStyle {
	padding-right: 0.5em;
	margin-top: 1em;
	padding-left: 0.5em;
	font-size: 9pt;
	margin-bottom: 1em;
	padding-bottom: 0.5em;
	margin-left: 0pt;
	padding-top: 0.5em;
	font-family: Courier New;
	background-color: #000000;
	color: #ffffff;
}
.smalltext {
	font-family: Tahoma, Georgia;
	color: #000000;
	font-size: 11px
}
.verysmalltext {
	font-family: Tahoma, Georgia;
	color: #000000;
	font-size: 4px
}
.member {
	font-family: Tahoma, Georgia;
	color: #003063;
	font-size: 9px
}
.btnStyle {
	background-color: #5D7790;
	border-width: 2;
	border-color: #E9E9E9;
	color: #FFFFFF;
	cursor: hand;
	font-family: Tahoma, Georgia;
	font-size: 12px
}
.selStyle {
	background-color: #FFFFFF;
	border-bottom: black 1px solid;
	border-left: black 1px solid;
	border-right: black 1px solid;
	border-top: black 1px solid;
	color: #000000;
	cursor: hand;
	font-family: Tahoma, Georgia;
	font-size: 12px
}
.inpStyle {
	background-color: #FFFFFF;
	border-bottom: black 1px solid;
	border-left: black 1px solid;
	border-right: black 1px solid;
	border-top: black 1px solid;
	color: #000000;
	font-family: Tahoma, Georgia;
	font-size: 12px
}
</style>
<script>
function jumpTo(b)
{
	javascript:window.location.hash=b;
}
</script>
<%
	int pageSize = 3;
	int pageNo;
	
	String strPageNo = request.getParameter("pageNo");
	if(strPageNo == null || strPageNo.trim().equals("")) {
		pageNo = 1;
	} else {
		try {
			pageNo = Integer.parseInt(strPageNo.trim());
		} catch(NumberFormatException e) {
			pageNo=1;
		}
		
		if(pageNo <= 0) pageNo = 1;
	}
	
	
 %>
 <%
 	List<Bbs> bbs = new ArrayList<Bbs>();
 	Connection conn = DB.getConn();
 	Statement stmtCount = DB.getStmt(conn);
 	ResultSet rsCount = DB.executeQuery(stmtCount, "select count(*) from bbs where pid=0");
 	rsCount.next();
 	int totalRecords = rsCount.getInt(1);
 	int totalPages = totalRecords % pageSize == 0 ? totalRecords / pageSize : totalRecords / pageSize + 1;
 	if(pageNo > totalPages) pageNo = totalPages;
 	int start = (pageNo - 1) * pageSize;
 	Statement stmt = DB.getStmt(conn);
 	ResultSet rs = DB.executeQuery(stmt, "select * from bbs where pid=0 order by pdate desc limit " + start + "," + pageSize);
 	
 	while(rs.next()) {
 		Bbs b = new Bbs();
		b.setId(rs.getInt("id"));
		b.setPid(rs.getInt("pid"));
		b.setRootid(rs.getInt("rootid"));
		b.setTitle(rs.getString("title"));
		b.setDate(rs.getTimestamp("pdate"));
		bbs.add(b);
 	}
 	DB.close(rs);
 	DB.close(stmt);
 	DB.close(conn);
  %>
  
</head>
<body background="./images/ALL_BG.gif" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#000000" vlink="#000080" alink="#FF0000">
      <tr>
        <td align="right" colspan="3"><img src="./images/collapsed_d.gif" align="absmiddle" alt="collapsed mode" border="0"><a href="bbs.jsp"><img src="./images/expanded.gif" border="0" align="absmiddle" alt="expanded mode"></a></td>
      </tr>
    </tbody>
  </table>
  <table width="95%" cellspacing="0" cellpadding="0" border="0">
    <tbody>
      <tr>
        <td align="left" width="100%"><table cellspacing="0" cellpadding="0" border="0" align="left">
            <tbody>
              <tr>
                <td width="9"><img src="./images/ttl.gif" width="9" height="27"></td>
                <td background="./images/ttc.gif"><b><a href=""><font color="black"><b>所有文章</b></font></a></b></td>
                <td width="9"><img src="./images/ttr.gif" width="9" height="27"></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <table border="0" cellspacing="1" cellpadding="4" width="95%">
    <tbody>
      <tr class="head">
        <td nowrap="" align="center" width="3%"><font color="#ffffff">&nbsp;</font></td>
        <td nowrap="" align="center" width="3%"><font color="#ffffff"><b>人气</b></font></td>
        <td nowrap="" align="center" width="3%"><font color="#ffffff">&nbsp;</font></td>
        <td align="center" width="75%"><font color="#ffffff"><b>标题</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>作者</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>帖子数</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>新</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>最后回复</b></font></td>
      </tr>
      <%
      	int i = 0;
      	for(Iterator<Bbs> it = bbs.iterator(); it.hasNext();) {
      		Bbs b = it.next();  	
      		String str = i % 2 == 0 ? "odd" : "even";
       %>
      <tr class="<%=str %>">
        <td width="4%" nowrap="" align="center"><img src="./images/topic_t.gif" border="0" align="absmiddle"></td>
        <td align="center" nowrap="">196976</td>
        <td align="center" width="3%" nowrap=""><a href="" target="_blank"><img src="./images/newwin.gif" border="0" align="absmiddle" alt="new window"></a></td>
        <td width="42%"><font color="red"></font> <a href="bbsDetailFalt.jsp?id=<%=b.getId() %>" class="topic"><%=b.getTitle() %></a> &nbsp;
        <td width="15%" align="center" nowrap=""><a href="">scottding</a></td>
        <td width="8%" align="center" nowrap="">138</td>
        <td width="8%" align="center" nowrap="">0</td>
        <td width="20%" nowrap="" class="smalltext"><a href=""><img src="./images/lastpost.gif" border="0" align="absmiddle"></a><%=new java.text.SimpleDateFormat().format(b.getDate()) %>
          by <a href="">v122450328</a></td>
      </tr>
      
      <%
      		i++;
      	}
       %>
    </tbody>
  </table>
  <!-- start query -->
  第<%=pageNo %>页         共<%=totalPages %>页<a href="bbsFalt.jsp?pageNo=<%=pageNo-1 %>">上一页</a><a href="bbsFalt.jsp?pageNo=<%=pageNo+1 %>">下一页</a>
  <!-- end of query -->
  
  <!-- 下拉框分页 -->
  <form name="form1" action="bbsFalt.jsp">
  	<select name="pageNo" onChange="document.form1.submit()">
  		<%
  			for(int k=1; k<=totalPages; k++) {
  		%>	
  				<option value="<%=k%>" <%=pageNo == k ? "selected" : "" %>>第<%=k %>页</option>
  		<%
  			}
  		 %> 	
  	</select>
  </form>
  <!-- end -->
  
  <!-- 输入框分页 -->
  
  	<form action="bbsFalt.jsp">
  	跳到第
  		<input type="text" value="<%=pageNo %>" name="pageNo"/>
  		<input type="submit" value="go"/>
     	</form>
  <!-- end -->
</body>
</html>