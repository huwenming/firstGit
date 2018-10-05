<%
	String loginCheck = (String)session.getAttribute("checkLogin");
	if(loginCheck == null || !loginCheck.trim().equals("true")) {
		response.sendRedirect("login.jsp");
		return;
	}
 %>
