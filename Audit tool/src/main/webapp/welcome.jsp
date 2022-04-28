<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    if(session.getAttribute("user_login")==null || session.getAttribute("user_login")=="" || session.getAttribute("user_login").equals("")) 
    {
        response.sendRedirect("index.jsp");
    }
    %>
    
    Welcome, <%=session.getAttribute("user_login")%> 
</h2>

<h3>
    <a href="logout.jsp">Logout</a>
</h3>

</center>
</body>
</html>