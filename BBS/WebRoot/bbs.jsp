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
<%!
	private void tree(List<Bbs> bbs, Connection conn, int id, int grade) {
		String sql = "select * from bbs where pid =" + id;
		Statement stmt = DB.getStmt(conn);
		ResultSet rs = DB.executeQuery(stmt, sql);
		try {
			while(rs.next()) {
				Bbs b = new Bbs();
				b.setId(rs.getInt("id"));
				b.setPid(rs.getInt("pid"));
				b.setRootid(rs.getInt("rootid"));
				b.setTitle(rs.getString("title"));
				b.setDate(rs.getTimestamp("pdate"));
				b.setIsleaf(rs.getInt("isleaf") == 0 ? true : false);
				b.setGrade(grade);
				bbs.add(b);
				if(!b.isIsleaf()) {
					tree(bbs, conn, b.getId(), grade + 1);
				}
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
 %>
 <%
 	List<Bbs> bbs = new ArrayList<Bbs>();
 	Connection conn = DB.getConn();
 	tree(bbs, conn, 0, 0);
 	DB.close(conn);
 	String checkLogin = (String)session.getAttribute("checkLogin");
 	boolean flag = false;
 	if(checkLogin != null && checkLogin.trim().equals("true")) {
 		flag = true;
 	} else {
 		flag = false;
 	}
  %>
</head>
<body background="./images/ALL_BG.gif" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#000000" vlink="#000080" alink="#FF0000">
<a name="top"></a>
<center>
  <table bgcolor="#007DC6" border="0" cellspacing="0" cellpadding="0" width="98%" height="8" style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px; border-left-width: 1px;width:98%;">
    <tbody>
      <tr>
        <td></td>
      </tr>
    </tbody>
  </table>
  <table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="0" width="98%" style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px; border-left-width: 1px;width:98%;">
    <tbody>
      <tr>
        <td width="299" align="left"><a href="" target="_top"><img src="./images/title.gif" border="0" hspace="0" vspace="0" align="left" width="299" height="75" alt="中国Java开发网"></a></td>
        <td width="299" align="left"></td>
        <td align="center"><strong><font size="+2">中国Java开发网</font></strong></td>
      </tr>
    </tbody>
  </table>
  <table bgcolor="#007DC6" border="0" cellspacing="0" cellpadding="0" width="98%" height="21" style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;width:98%;">
    <tbody>
      <tr>
        <td align="right" valign="center"><span title="注册新账号"><a href=""><font color="#FFFFFF">注册</font></a></span><font color="#FFFFFF"> | </font> <span title="会员登录论坛"><a href="http://www.cjsdn.net/user/login"><font color="#FFFFFF">登录</font></a></span><font color="#FFFFFF"> | </font> <span title="帮助及常见问题"><a href="http://www.cjsdn.net/html/help.html" target="_blank"><font color="#FFFFFF">帮助</font></a></span><font color="#FFFFFF"> | </font> <span title="全文检索"><a href="http://www.cjsdn.net/post/search"><font color="#FFFFFF">搜索</font></a></span><font color="#FFFFFF"> | </font> <span title="发帖最多的用户，回复最多的话题，人气最旺的话题"><a href="http://www.cjsdn.net/stat/top"><font color="#FFFFFF">排行榜</font></a></span><font color="#FFFFFF"> | </font> <span title="按每月、日、周以及小时的帖子数统计"><a href="http://www.cjsdn.net/stat/analysis"><font color="#FFFFFF">发帖统计</font></a></span>&nbsp;&nbsp; <br></td>
      </tr>
      <tr> </tr>
    </tbody>
  </table>
  <br>
  <table width="98%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td><b> 您没有登录 </b></td>
      </tr>
      <tr> </tr>
    </tbody>
  </table>
  <br clear="all">
  <table width="95%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td width="60%"><font size="3" face="arial"><b>&#187;</b></font>&nbsp;<a href="" class="nav"><b>中国Java开发网</b></a>&nbsp;<font size="3" face="arial"><b>&#187;</b></font>&nbsp;<b>Java SE 综合讨论区</b>&nbsp;&nbsp;<br>
          <br>
          <img src="./images/icon_moderator.gif" border="0" align="absmiddle"><b><a href="post.jsp" class="mod">发表新主题</a></b>&nbsp; </b>&nbsp; </b>&nbsp; <img src="./images/icon_watch.gif" border="0" alt="该版块的所有新话题都将Email到你的邮箱" align="absmiddle"> <b><font color="#C0C0C0">订阅版块</font></b> <a href="http://www.cjsdn.net/rss/2.0/1.xml" target="_blank"><img src="./images/feed-rss.gif" align="absmiddle" border="0"></a> <a href="http://www.cjsdn.net/rss/1.0/1.xml" target="_blank"><img src="./images/feed-rdf.gif" align="absmiddle" border="0"></a></td>
        <td width="35%" align="center" valign="top"><script>
function popUp(url) {
  var newwindow = window.open(url, "Announcement", "width=500,height=300,resizable=no,scrollBars=yes,menuBar=no, directories=no,toolBar=no,location=No,status=No");
}
</script> 
          <img src="./images/announce.gif" border="0" width="32" height="29" align="absmiddle"> &nbsp;&nbsp;<a href="javascript:popUp(&quot;http://www.cjsdn.net/board/announce?bid=1&quot;)" class="mod">提问前请看[加贴须知]和搜寻旧帖子<br>
          请尽量用准确的文字描述作为标题<br>
          Applet,AWT,Swing的问题请移步</a></td>
      </tr>
    </tbody>
  </table>
  <table width="95%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td align="right" colspan="3"><a href="bbsFalt.jsp"><img src="./images/collapsed_d.gif" align="absmiddle" alt="collapsed mode" border="0"></a><img src="./images/expanded.gif" border="0" align="absmiddle" alt="expanded mode"></td>
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
        <%
        	if(flag) {
        	
         %>
        <td nowrap="" align="center" width="3%"><font color="#ffffff">是否删除</font></td>
        <%
        }
         %>
        <td align="center" width="75%"><font color="#ffffff"><b>标题</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>作者</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>帖子数</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>新</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>最后回复</b></font></td>
      </tr>
      <%
      	int j = 0;
      	for(Iterator<Bbs> it = bbs.iterator(); it.hasNext();) {
      		Bbs b = it.next();  	
      		String str = "";
      		for(int i=0; i<b.getGrade(); i++) {
      			str += "----";
      		}
      		String classStr = j % 2 == 0 ? "odd" : "even";
       %>
      <tr class="<%=classStr %>">
        <td width="4%" nowrap="" align="center"><img src="./images/topic_t.gif" border="0" align="absmiddle"></td>
        <td align="center" nowrap="">196976</td>
        <%
        	if(flag) {
        	
         %>
        <td align="center" width="3%" nowrap=""><a href="delete.jsp?id=<%=b.getId() %>&pid=<%=b.getPid() %>" target="_blank">删除</a></td>
        <%
        }
         %>
        <td width="42%"><font color="red"></font> <a href="bbsDetail.jsp?id=<%=b.getId() %>" class="topic"><%=str + b.getTitle() %></a> &nbsp;
        <td width="15%" align="center" nowrap=""><a href="">scottding</a></td>
        <td width="8%" align="center" nowrap="">138</td>
        <td width="8%" align="center" nowrap="">0</td>
        <td width="20%" nowrap="" class="smalltext"><a href=""><img src="./images/lastpost.gif" border="0" align="absmiddle"></a><%=new java.text.SimpleDateFormat().format(b.getDate()) %>
          by <a href="">v122450328</a></td>
      </tr>
      <%
      		j++;
      	}
       %>
    </tbody>
  </table>
  <table width="95%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td align="right"><table border="0" cellspacing="0" cellpadding="0">
            <tbody>
              <tr>
                <td><b>(Total 297 pages)</b> &nbsp; </td>
                <td bgcolor="#b4b4b4"><table border="0" cellspacing="1" cellpadding="0">
                  </table></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <br>
  <table width="95%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td align="left"><img src="./images/collapsed_d.gif" align="absmiddle" alt="collapsed mode" border="0"><a href="http://www.cjsdn.net/post/page?bid=1&amp;tpg=1&amp;sty=0&amp;age=0&amp;s=-1#1"><img src="./images/expanded.gif" border="0" align="absmiddle" alt="expanded mode"></a></td>
      </tr>
    </tbody>
  </table>
  <table border="0" width="95%">
    <tbody>
      <tr valign="top">
        <td><font class="text"> <img src="./images/topic.gif" border="0" align="absmiddle">&nbsp; 没有新帖的话题
          ( <img src="./images/topic_h.gif" border="0" align="absmiddle">&nbsp; 超过 30 个回帖的话题 )<br>
          <img src="./images/topic_n.gif" border="0" align="absmiddle">&nbsp; 含有新帖的话题
          ( <img src="./images/topic_hn.gif" border="0" align="absmiddle">&nbsp; 超过 30 个回帖的话题，有新的回帖 )<br>
          <img src="./images/topic_l.gif" border="0" align="absmiddle">&nbsp; 锁定的话题（不能回复）</font></td>
        <td align="right"><form action="http://www.cjsdn.net/post/page?bid=1&amp;sty=1&amp;s=-1" method="post" style="margin:0px;">
            <select name="age" class="selStyle">
              <option value="-1">显示收入精华区的帖子 </option>
              <option value="1">显示昨天以来的帖子 </option>
              <option value="2">显示二天以来的帖子 </option>
              <option value="5">显示五天以来的帖子 </option>
              <option value="10">显示十天以来的帖子 </option>
              <option value="20">显示二十天以来的帖子 </option>
              <option value="30">显示三十天以来的帖子 </option>
              <option value="60">显示六十天以来的帖子 </option>
              <option value="100">显示一百天以来的帖子 </option>
              <option value="0" selected="">显示所有的帖子 </option>
            </select>
            <input type="submit" name="b" value=" Go " class="btnStyle">
          </form>
          <form action="http://www.cjsdn.net/post/page?sty=1" method="post" style="margin:0px;">
            <select name="bid" class="selStyle">
              <option value="">社区精华</option>
              <option value="29">&nbsp;&nbsp;|- 技术文章库</option>
              <option value="">Java技术</option>
              <option value="1" selected="">&nbsp;&nbsp;|- Java SE 综合讨论区</option>
              <option value="2">&nbsp;&nbsp;|- Java EE 综合讨论区</option>
              <option value="3">&nbsp;&nbsp;|- 移动互联网</option>
              <option value="51">&nbsp;&nbsp;|- Servlet/JSP/JSF/JavaFX Script</option>
              <option value="46">&nbsp;&nbsp;|- Java GUI 设计</option>
              <option value="7">&nbsp;&nbsp;|- Java IDE</option>
              <option value="5">&nbsp;&nbsp;|- WebService/XML/JSON/SOAP/SOA</option>
              <option value="10">&nbsp;&nbsp;|- Database/JDBC/SQL/JDO/Hibernate</option>
              <option value="20">&nbsp;&nbsp;|- Architecture &amp; Framework</option>
              <option value="11">&nbsp;&nbsp;|- Application Server</option>
              <option value="17">&nbsp;&nbsp;|- Design Pattern &amp; UML</option>
              <option value="6">&nbsp;&nbsp;|- Java Security</option>
              <option value="">其他技术</option>
              <option value="66">&nbsp;&nbsp;|- 云计算</option>
              <option value="64">&nbsp;&nbsp;|- Web Server &amp; Linux</option>
              <option value="60">&nbsp;&nbsp;|- AJAX讨论区</option>
              <option value="">其他资源</option>
              <option value="9">&nbsp;&nbsp;|- 电子书籍</option>
              <option value="30">&nbsp;&nbsp;|- Java程序分享区</option>
              <option value="">IT生活</option>
              <option value="39">&nbsp;&nbsp;|- 科技英语</option>
              <option value="32">&nbsp;&nbsp;|- 灌水乐园</option>
              <option value="">站务管理</option>
              <option value="59">&nbsp;&nbsp;|- Cjsdn之家</option>
              <option value="15">&nbsp;&nbsp;|- 站务管理</option>
              <option value="">站内项目</option>
              <option value="49">&nbsp;&nbsp;|- 站内业务咨询</option>
              <option value="63">&nbsp;&nbsp;|- OpenUAP CMS</option>
              <option value="23">&nbsp;&nbsp;|- Jute Powerful Forum</option>
              <option value="62">&nbsp;&nbsp;|- 高性能Java数据库缓存</option>
            </select>
            <input type="submit" name="b" value=" Go " class="btnStyle">
          </form></td>
      </tr>
    </tbody>
  </table>
  <br>
  <table width="98%">
    <tbody>
      <tr>
        <td align="right"><a name="bottom"></a><a href="javascript:jumpTo(&#39;top&#39;)"><img src="./images/up.gif" border="0" alt="Jump to the top of page"></a></td>
      </tr>
    </tbody>
  </table>
  <br>
  <center>
    <table>
      <tbody>
        <tr>
          <td align="right"><a href="http://www.xiamen.cyberpolice.cn/" target="_blank"> <img src="./images/wj.gif" border="0"></a></td>
          <td>&nbsp;&nbsp;</td>
          <td align="left"><font class="text"><font color="#808080">Powered by <a href="http://www.cjsdn.net/" target="_blank">Jute Powerful Forum</a>&#174; Version Jute 1.5.6 Ent <br>
            Copyright &#169; 2002-2018 Cjsdn Team. All Righits Reserved. <a href="http://www.miitbeian.gov.cn/" target="_blank">闽ICP备05005120号</a> <br>
            客服电话&nbsp;0592-8750026&nbsp;&nbsp;&nbsp;&nbsp;客服信箱&nbsp;714923@qq.com&nbsp;&nbsp;&nbsp;&nbsp;客服QQ&nbsp;714923</font></font></td>
        </tr>
      </tbody>
    </table>
  </center>
</center>
</body>
</html>