<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("user_designation")!=null)
{
	session.removeAttribute("user_designation");
	request.getSession(false);
	session.setAttribute("user_designation", null);
	session.invalidate();
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>