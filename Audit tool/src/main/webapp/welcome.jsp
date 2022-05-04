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
    <%
    
    response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
    response.setHeader("progma", "no-cache");
    
    session = request.getSession();
    
    if(session.getAttribute("user_designation")==null || session.getAttribute("user_designation")=="" || session.getAttribute("user_designation").equals("")) 
    {
        response.sendRedirect("index.jsp");
    }
    
    else if(session.getAttribute("user_designation").equals("Analyst")||session.getAttribute("user_designation").equals("Associate Consultant")||session.getAttribute("user_designation").equals("Consultant")||session.getAttribute("user_designation").equals("Assistant Manager"))
    {
    	response.sendRedirect("dashboard1.jsp");
    }
    else
    {
    	response.sendRedirect("dashboard2.jsp");
    }
    %>
   
</h2>

<h3>
    <a href="logout.jsp">Logout</a>
</h3>

</center>
</body>
</html>