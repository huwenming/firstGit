<%@ page language="java" import="java.util.*, com.bjsxt.bbs.*, java.sql.*" pageEncoding="gb2312"%>
<!-- saved from url=(0048)http://www.cjsdn.net/post/page?bid=1&sty=1&age=0 -->
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
        <td width="299" align="left"><a href="" target="_top"><img src="./images/title.gif" border="0" hspace="0" vspace="0" align="left" width="299" height="75" alt="�й�Java������"></a></td>
        <td width="299" align="left"></td>
        <td align="center"><strong><font size="+2">�й�Java������</font></strong></td>
      </tr>
    </tbody>
  </table>
  <table bgcolor="#007DC6" border="0" cellspacing="0" cellpadding="0" width="98%" height="21" style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;width:98%;">
    <tbody>
      <tr>
        <td align="right" valign="center"><span title="ע�����˺�"><a href=""><font color="#FFFFFF">ע��</font></a></span><font color="#FFFFFF"> | </font> <span title="��Ա��¼��̳"><a href="http://www.cjsdn.net/user/login"><font color="#FFFFFF">��¼</font></a></span><font color="#FFFFFF"> | </font> <span title="��������������"><a href="http://www.cjsdn.net/html/help.html" target="_blank"><font color="#FFFFFF">����</font></a></span><font color="#FFFFFF"> | </font> <span title="ȫ�ļ���"><a href="http://www.cjsdn.net/post/search"><font color="#FFFFFF">����</font></a></span><font color="#FFFFFF"> | </font> <span title="���������û����ظ����Ļ��⣬���������Ļ���"><a href="http://www.cjsdn.net/stat/top"><font color="#FFFFFF">���а�</font></a></span><font color="#FFFFFF"> | </font> <span title="��ÿ�¡��ա����Լ�Сʱ��������ͳ��"><a href="http://www.cjsdn.net/stat/analysis"><font color="#FFFFFF">����ͳ��</font></a></span>&nbsp;&nbsp; <br></td>
      </tr>
      <tr> </tr>
    </tbody>
  </table>
  <br>
  <table width="98%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td><b> ��û�е�¼ </b></td>
      </tr>
      <tr> </tr>
    </tbody>
  </table>
  <br clear="all">
  <table width="95%" cellspacing="0" cellpadding="2" border="0">
    <tbody>
      <tr>
        <td width="60%"><font size="3" face="arial"><b>&#187;</b></font>&nbsp;<a href="" class="nav"><b>�й�Java������</b></a>&nbsp;<font size="3" face="arial"><b>&#187;</b></font>&nbsp;<b>Java SE �ۺ�������</b>&nbsp;&nbsp;<br>
          <br>
          <img src="./images/icon_moderator.gif" border="0" align="absmiddle"><b><a href="post.jsp" class="mod">����������</a></b>&nbsp; </b>&nbsp; </b>&nbsp; <img src="./images/icon_watch.gif" border="0" alt="�ð��������»��ⶼ��Email���������" align="absmiddle"> <b><font color="#C0C0C0">���İ��</font></b> <a href="http://www.cjsdn.net/rss/2.0/1.xml" target="_blank"><img src="./images/feed-rss.gif" align="absmiddle" border="0"></a> <a href="http://www.cjsdn.net/rss/1.0/1.xml" target="_blank"><img src="./images/feed-rdf.gif" align="absmiddle" border="0"></a></td>
        <td width="35%" align="center" valign="top"><script>
function popUp(url) {
  var newwindow = window.open(url, "Announcement", "width=500,height=300,resizable=no,scrollBars=yes,menuBar=no, directories=no,toolBar=no,location=No,status=No");
}
</script> 
          <img src="./images/announce.gif" border="0" width="32" height="29" align="absmiddle"> &nbsp;&nbsp;<a href="javascript:popUp(&quot;http://www.cjsdn.net/board/announce?bid=1&quot;)" class="mod">����ǰ�뿴[������֪]����Ѱ������<br>
          �뾡����׼ȷ������������Ϊ����<br>
          Applet,AWT,Swing���������Ʋ�</a></td>
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
                <td background="./images/ttc.gif"><b><a href=""><font color="black"><b>��������</b></font></a></b></td>
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
        <td nowrap="" align="center" width="3%"><font color="#ffffff"><b>����</b></font></td>
        <%
        	if(flag) {
        	
         %>
        <td nowrap="" align="center" width="3%"><font color="#ffffff">�Ƿ�ɾ��</font></td>
        <%
        }
         %>
        <td align="center" width="75%"><font color="#ffffff"><b>����</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>����</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>������</b></font></td>
        <td align="center" nowrap=""><font color="#ffffff"><b>��</b></font></td>
        <td nowrap="" align="center"><font color="#ffffff"><b>���ظ�</b></font></td>
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
        <td align="center" width="3%" nowrap=""><a href="delete.jsp?id=<%=b.getId() %>&pid=<%=b.getPid() %>" target="_blank">ɾ��</a></td>
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
        <td><font class="text"> <img src="./images/topic.gif" border="0" align="absmiddle">&nbsp; û�������Ļ���
          ( <img src="./images/topic_h.gif" border="0" align="absmiddle">&nbsp; ���� 30 �������Ļ��� )<br>
          <img src="./images/topic_n.gif" border="0" align="absmiddle">&nbsp; ���������Ļ���
          ( <img src="./images/topic_hn.gif" border="0" align="absmiddle">&nbsp; ���� 30 �������Ļ��⣬���µĻ��� )<br>
          <img src="./images/topic_l.gif" border="0" align="absmiddle">&nbsp; �����Ļ��⣨���ܻظ���</font></td>
        <td align="right"><form action="http://www.cjsdn.net/post/page?bid=1&amp;sty=1&amp;s=-1" method="post" style="margin:0px;">
            <select name="age" class="selStyle">
              <option value="-1">��ʾ���뾫���������� </option>
              <option value="1">��ʾ�������������� </option>
              <option value="2">��ʾ�������������� </option>
              <option value="5">��ʾ�������������� </option>
              <option value="10">��ʾʮ������������ </option>
              <option value="20">��ʾ��ʮ������������ </option>
              <option value="30">��ʾ��ʮ������������ </option>
              <option value="60">��ʾ��ʮ������������ </option>
              <option value="100">��ʾһ�������������� </option>
              <option value="0" selected="">��ʾ���е����� </option>
            </select>
            <input type="submit" name="b" value=" Go " class="btnStyle">
          </form>
          <form action="http://www.cjsdn.net/post/page?sty=1" method="post" style="margin:0px;">
            <select name="bid" class="selStyle">
              <option value="">��������</option>
              <option value="29">&nbsp;&nbsp;|- �������¿�</option>
              <option value="">Java����</option>
              <option value="1" selected="">&nbsp;&nbsp;|- Java SE �ۺ�������</option>
              <option value="2">&nbsp;&nbsp;|- Java EE �ۺ�������</option>
              <option value="3">&nbsp;&nbsp;|- �ƶ�������</option>
              <option value="51">&nbsp;&nbsp;|- Servlet/JSP/JSF/JavaFX Script</option>
              <option value="46">&nbsp;&nbsp;|- Java GUI ���</option>
              <option value="7">&nbsp;&nbsp;|- Java IDE</option>
              <option value="5">&nbsp;&nbsp;|- WebService/XML/JSON/SOAP/SOA</option>
              <option value="10">&nbsp;&nbsp;|- Database/JDBC/SQL/JDO/Hibernate</option>
              <option value="20">&nbsp;&nbsp;|- Architecture &amp; Framework</option>
              <option value="11">&nbsp;&nbsp;|- Application Server</option>
              <option value="17">&nbsp;&nbsp;|- Design Pattern &amp; UML</option>
              <option value="6">&nbsp;&nbsp;|- Java Security</option>
              <option value="">��������</option>
              <option value="66">&nbsp;&nbsp;|- �Ƽ���</option>
              <option value="64">&nbsp;&nbsp;|- Web Server &amp; Linux</option>
              <option value="60">&nbsp;&nbsp;|- AJAX������</option>
              <option value="">������Դ</option>
              <option value="9">&nbsp;&nbsp;|- �����鼮</option>
              <option value="30">&nbsp;&nbsp;|- Java���������</option>
              <option value="">IT����</option>
              <option value="39">&nbsp;&nbsp;|- �Ƽ�Ӣ��</option>
              <option value="32">&nbsp;&nbsp;|- ��ˮ��԰</option>
              <option value="">վ�����</option>
              <option value="59">&nbsp;&nbsp;|- Cjsdn֮��</option>
              <option value="15">&nbsp;&nbsp;|- վ�����</option>
              <option value="">վ����Ŀ</option>
              <option value="49">&nbsp;&nbsp;|- վ��ҵ����ѯ</option>
              <option value="63">&nbsp;&nbsp;|- OpenUAP CMS</option>
              <option value="23">&nbsp;&nbsp;|- Jute Powerful Forum</option>
              <option value="62">&nbsp;&nbsp;|- ������Java���ݿ⻺��</option>
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
            Copyright &#169; 2002-2018 Cjsdn Team. All Righits Reserved. <a href="http://www.miitbeian.gov.cn/" target="_blank">��ICP��05005120��</a> <br>
            �ͷ��绰&nbsp;0592-8750026&nbsp;&nbsp;&nbsp;&nbsp;�ͷ�����&nbsp;714923@qq.com&nbsp;&nbsp;&nbsp;&nbsp;�ͷ�QQ&nbsp;714923</font></font></td>
        </tr>
      </tbody>
    </table>
  </center>
</center>
</body>
</html>