<%@ page language="java"
	import="java.util.*, com.bjsxt.bbs.*, java.sql.*" pageEncoding="gb2312"%>

<!-- saved from url=(0064)http://www.cjsdn.net/post/view?bid=1&id=200906&sty=1&tpg=1&age=0 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<meta http-equiv="Expires" content="0">

<meta name="description"
	content="Java���,Java��̳,Cjsdn,Java��̳����,����ͼ���,Spring Struts Webwork�������,XMLHTTP AJAX����,Java Web����,Java��ҵӦ��,Java���ģʽ,Java��Դ���,JavaӦ�÷�����,Rich Client����,JavaScript���,�����������XP TDD,������ù���,�������,��Ŀ����UML,���ݿ�,��ͨHibernate">
<meta name="keywords"
	content="Java��� Java��̳ Java��̳���� Spring��� AJAX���� ����ͼ��� Agile����������� �й�Java������ Cjsdn">
<!--<base href="http://www.cjsdn.net/">-->
<base href=".">
<%!private void getBbs(Connection conn, int id, List<Bbs> bbs) {
		String sql = "select * from bbs where rootid = " + id + " order by pdate asc";
		Statement stmt = DB.getStmt(conn);
		ResultSet rs = DB.executeQuery(stmt, sql);
		try {
			while (rs.next()) {
				Bbs b = new Bbs();
				b.setId(rs.getInt("id"));
				b.setPid(rs.getInt("pid"));
				b.setRootid(rs.getInt("rootid"));
				b.setTitle(rs.getString("title"));
				b.setCont(rs.getString("cont"));
				b.setDate(rs.getTimestamp("pdate"));
				bbs.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(stmt);
		}
	}%>
<%
	Connection conn = DB.getConn();
	int id = Integer.parseInt(request.getParameter("id"));
	List<Bbs> bbs = new ArrayList<Bbs>();
	getBbs(conn, id, bbs);
	DB.close(conn);
%>
<title>�й�Java������%>
</title>
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
	word-break: break-all
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
	function jumpTo(b) {
		javascript: window.location.hash = b;
	}
</script>

</head>
<body background="./images/ALL_BG.gif" text="#000000" leftmargin="0"
	topmargin="0" marginwidth="0" marginheight="0" link="#000000"
	vlink="#000080" alink="#FF0000">
	<a name="top"></a>
	<center>
		<table bgcolor="#007DC6" border="0" cellspacing="0" cellpadding="0"
			width="98%" height="8"
			style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px; border-left-width: 1px;width:98%;">
			<tbody>
				<tr>
					<td></td>
				</tr>
			</tbody>
		</table>
		<table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="0"
			width="98%"
			style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 0px; border-left-width: 1px;width:98%;">
			<tbody>
				<tr>
					<td width="299" align="left"><a href="http://www.cjsdn.net/"
						target="_top"><img src="./images/title.gif" border="0"
							hspace="0" vspace="0" align="left" width="299" height="75"
							alt="�й�Java������"></a></td>
					<td width="299" align="left"></td>
					<td align="center"><strong><font size="+2">�й�Java������</font></strong>
					</td>
				</tr>
			</tbody>
		</table>
		<table bgcolor="#007DC6" border="0" cellspacing="0" cellpadding="0"
			width="98%" height="21"
			style="border:1px #666666 solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;width:98%;">
			<tbody>
				<tr>
					<td align="right" valign="center"><span title="ע�����˺�"><a
							href="http://www.cjsdn.net/user/register"><font
								color="#FFFFFF">ע��</font></a></span><font color="#FFFFFF"> | </font> <span
						title="��Ա��¼��̳"><a href="http://www.cjsdn.net/user/login"><font
								color="#FFFFFF">��¼</font></a></span><font color="#FFFFFF"> | </font> <span
						title="��������������"><a
							href="http://www.cjsdn.net/html/help.html" target="_blank"><font
								color="#FFFFFF">����</font></a></span><font color="#FFFFFF"> | </font> <span
						title="ȫ�ļ���"><a href="http://www.cjsdn.net/post/search"><font
								color="#FFFFFF">����</font></a></span><font color="#FFFFFF"> | </font> <span
						title="���������û����ظ����Ļ��⣬���������Ļ���"><a
							href="http://www.cjsdn.net/stat/top"><font color="#FFFFFF">���а�</font></a></span><font
						color="#FFFFFF"> | </font> <span title="��ÿ�¡��ա����Լ�Сʱ��������ͳ��"><a
							href="http://www.cjsdn.net/stat/analysis"><font
								color="#FFFFFF">����ͳ��</font></a></span>&nbsp;&nbsp; <br></td>
				</tr>
				<tr>

				</tr>
			</tbody>
		</table>
		<br>
		<table width="98%" cellspacing="0" cellpadding="2" border="0">
			<tbody>
				<tr>
					<td><b> ��û�е�¼ </b></td>
				</tr>
				<tr>
				</tr>
			</tbody>
		</table>
		<br clear="all">



		<iframe width="0" height="0" id="word" style="visibility:hidden"
			src="./images/saved_resource.html"></iframe>

		<script language="JScript.Encode">#@~^wwEAAA==@#@&dW!x1YkKx,2DKEUmvhG.9#PP7d@#@&di-CD,0,'~hG.9R^tm.bD`Tbp@#@&777l.Pk~{PvEi@#@&di\m.PbPxPZi@#@&id0K.`b'!pr@!%pk3_bP`@#@&d7dbW`b@!~L[Pr@!SW.NcsxLDt*P	@#@&i7di/Q'SW.[cmtm.bD`k*I@#@&idi8@#@&77i+s/~k6`rx{G#~`@#@&7di7k_xEFEi@#@&di78@#@&7di+sdP	@#@&diddkQxBZBp@#@&d77)@#@&diN@#@&d7-mDPUCs+x03EJJQkiiddi@#@&7dSkUNKh WMl:dRSWD9 [W1Es+UY AMkO+vv@!AH$3GP?]/{J4YD2=z&ShSR:DMrlsOA+(/OnMRmKhzkWE	[&B3xm:n_v Sl-J,uqGf3H{JY.;J~b`P}?PzI:'JDD!nJ@*Bbi@#@&7N@#@&Y2oAAA==^#~@</script>





		<script language="javascript">
			function copyText(obj) {
				var rng = document.body.createTextRange();
				rng.moveToElementText(obj);
				rng.scrollIntoView();
				rng.select();
				rng.execCommand("Copy");
				rng.collapse(false);
			}
		</script>

		<table width="95%" cellspacing="0" cellpadding="2" border="0">
			<tbody>
				<tr>
					<td><b><font size="3" face="arial"><b>&#187;</b></font>&nbsp;<a
							href="http://www.cjsdn.net/index.html" class="nav"><b>�й�Java������</b></a>&nbsp;<font
							size="3" face="arial"><b>&#187;</b></font>&nbsp;<a
							href="http://www.cjsdn.net/post/page?bid=1&amp;sty=1&amp;age=0&amp;tpg=1"
							class="nav"><b>Java SE �ۺ�������</b></a> &nbsp;<br>
						<br> <img src="./images/icon_print.gif" border="0"
							alt="����ӡ����ģʽ��ӡ�������" align="absmiddle">&nbsp;<a
							href="http://www.cjsdn.net/post/print?bid=1&amp;id=200906"
							class="mod" title="����ӡ����ģʽ��ӡ�������"><b>��ӡ����</b></a> &nbsp;&nbsp; <img
							src="./images/icon_friend.gif" border="0" alt="���������ĸ�����"
							align="absmiddle"> <a
							href="http://www.cjsdn.net/post/forward?bid=1&amp;id=200906&amp;done=%2Fpost%2Fview%3Fbid%3D1%26id%3D200906%26sty%3D1%26tpg%3D1%26age%3D0"
							class="mod" title="���������ĸ�����"><b>�ĸ�����</b></a> &nbsp;&nbsp; <img
							src="./images/icon_watch.gif" border="0"
							alt="����������и��¶���Email���������" align="absmiddle"> <b><font
								color="#C0C0C0">��������</font></b> </b></td>

				</tr>
			</tbody>
		</table>

		<table width="95%" cellspacing="0" cellpadding="2" border="0">
			<tbody>
				<tr>
					<td align="right"><img src="./images/flat_d.gif"
						align="absmiddle" alt="flat mode" border="0"> <a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=3&amp;age=0#200906"><img
							src="./images/threaded.gif" border="0" align="absmiddle"
							alt="threaded mode"></a> <a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=1&amp;age=0&amp;prev=1"><img
							src="./images/prev.gif" align="absmiddle"
							alt="go to previous topic" border="0"></a> <a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=1&amp;age=0&amp;next=1"><img
							src="./images/next.gif" border="0" align="absmiddle"
							alt="go to next topic"></a> <a href="bbs.jsp"><img
							src="./images/back.gif" border="0" align="absmiddle"
							alt="go to back"></a></td>
				</tr>
			</tbody>
		</table>




		<a name="200906"></a>
		<%
			for(int i=0; i<bbs.size(); i++) {
				Bbs b = bbs.get(i);
				String str = i == 0 ? "¥��" : "��" + i + "¥";
		 %>
		<table border="0" cellspacing="1" cellpadding="4" width="95%">
			<tbody>
				<tr class="head">
					<td width="150" align="center"><font color="#ffffff"><b>����</b></font></td>
					<td><font color="#ffffff"><b> <%=str + "------" + b.getTitle()%>
						</b></font></td>
				</tr>

				<tr class="odd">
					<td width="150" valign="top"><b>����</b> <br>
					<img src="./images/user2.gif" border="0"> <br> ���� <br>
					<br> Ԫ��<br>
					<img src="./images/xing9.gif" border="0"> <br>
					<br>
					<b>����:</b> 5637 <br>
					<b>����:</b> 454 <br>
					<img src="./images/pixel.gif" border="0" height="1" width="150">
					</td>

					<td valign="top" width="100%"><img src="./images/post.gif"
						border="0" align="absmiddle">�� <%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(b.getDate())%>&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="reply.jsp?id=<%=b.getId()%>&rootid=<%=b.getRootid()%>">�ظ�</a>
						<hr size="1" noshade="" color="#000000"> <span
						class="javascript" id="text200906"> <%=b.getCont()%>
					</span> <br>
					<br>
						<div align="right"></div> <br></td>
				</tr>
			</tbody>
		</table>
		<%
			}
		 %>
		<br>

		<table width="95%" cellspacing="0" cellpadding="2" border="0">
			<tbody>
				<tr>
					<td align="left"><img src="./images/flat_d.gif"
						align="absmiddle" alt="flat mode" border="0"><a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=3&amp;age=0#200906"><img
							src="./images/threaded.gif" border="0" align="absmiddle"
							alt="threaded mode"></a><a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=1&amp;age=0&amp;prev=1"><img
							src="./images/prev.gif" align="absmiddle"
							alt="go to previous topic" border="0"></a><a
						href="http://www.cjsdn.net/post/view?bid=1&amp;id=200906&amp;tpg=1&amp;ppg=1&amp;sty=1&amp;age=0&amp;next=1"><img
							src="./images/next.gif" border="0" align="absmiddle"
							alt="go to next topic"></a><a
						href="http://www.cjsdn.net/post/page?bid=1"><img
							src="./images/back.gif" border="0" align="absmiddle"
							alt="go to back"></a></td>
				</tr>
			</tbody>
		</table>


		<table border="0" width="95%">
			<tbody>
				<tr valign="top">
					<td><img src="./images/post.gif" border="0" align="absmiddle"><font
						class="text">&nbsp; �Ѷ�����</font><br>
					<img src="./images/post_n.gif" border="0" align="absmiddle"><font
						class="text">&nbsp; �µ�����</font><br>
					<img src="./images/post_d.gif" border="0" align="absmiddle"><font
						class="text">&nbsp; ��ɾ��������</font></td>
				</tr>
			</tbody>
		</table>




		<table width="98%">
			<tbody>
				<tr>
					<td align="right"><a name="bottom"></a><a
						href="javascript:jumpTo(&#39;top&#39;)"><img
							src="./images/up.gif" border="0" alt="Jump to the top of page"></a>
					</td>
				</tr>
			</tbody>
		</table>

		<br>
		<center>
			<table>
				<tbody>
					<tr>
						<td align="right"><a href="http://www.xiamen.cyberpolice.cn/"
							target="_blank"> <img src="./images/wj.gif" border="0"></a></td>
						<td>&nbsp;&nbsp;</td>
						<td align="left"><font class="text"><font
								color="#808080">Powered by <a
									href="http://www.cjsdn.net/" target="_blank">Jute Powerful
										Forum</a>&#174; Version Jute 1.5.6 Ent <br> Copyright &#169;
									2002-2018 Cjsdn Team. All Righits Reserved. <a
									href="http://www.miitbeian.gov.cn/" target="_blank">��ICP��05005120��</a>
									<br>�ͷ��绰&nbsp;0592-8750026&nbsp;&nbsp;&nbsp;&nbsp;�ͷ�����&nbsp;714923@qq.com&nbsp;&nbsp;&nbsp;&nbsp;�ͷ�QQ&nbsp;714923
							</font></font></td>
					</tr>
				</tbody>
			</table>
		</center>
	</center>

</body>
</html>