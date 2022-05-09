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
<h2>

    <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
    <c:set var="userdata" scope="session" value="<%= currentUser.getDesignation()%>"/>
    <c:if test="${userdata == 'Analyst'}">
    <%
    response.sendRedirect("dashboard1.jsp");
    %>
   </c:if>
   <c:if test="${userdata == 'Manager'}">
    <%
    response.sendRedirect("dashboard1.jsp");
    %>
   </c:if>
</h2>

<h3>
    <a href="logout.jsp">Logout</a>
</h3>

</center>
</body>
</html>