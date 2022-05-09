<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
Welcome    
<% 
if(currentUser.getDesignation()!=null)
{
	session.setAttribute(currentUser.getDesignation(), null);
	session.invalidate();
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>