<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
                    <%@ page language="java" import="com.tool.bean.LoginBean" %>
                        <%@ page language="java" import="com.tool.bean.AuditBean" %>
                            <%@ page language="java" import="com.tool.config.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IA Accelerator</title>

<style>
table, th, td {
  border: 1px solid black;
  text-align: center;
  vertical-align: middle;
}

</style>
</head>
<body>

   <%
                                                                            try{
                                                                            	String auditid=request.getParameter("idrid");
                                                                            	
                                                                            	ResultSet resultset2=null;
                                                                            	ResultSet resultset1=null;
                                                                            	  Connection connection=Dbconfig.getConnection();
                                                                            	
                                                                                PreparedStatement psmt2=connection.prepareStatement("select auditid,data,Process,period,requesttype,status,rd,ed,ad,delay from IDR_TABLE where auditid="+auditid);
                                                                                PreparedStatement psmt1=connection.prepareStatement("select Name_of_client,Engagement_name,audit_start_date from Audits where Initiative_id="+auditid);
                                                                                
                                                                                resultset1 =psmt1.executeQuery() ;
                                                                                resultset2 =psmt2.executeQuery() ;
                                                                                int i=1;
                                                                            	

                                                                                
                                                                        %>
                                                                       
  <table id="example" class="display nowrap" style="width:100%">
  <%  while(resultset1.next()){ %>
        <h1 style="text-align:center;color:purple">Initial Data Request (<%= resultset1.getString("Engagement_name")%>)</h1>
       <tr>
            
            </tr>
            <tr>
            
            </tr>
            <tr>
           
            </tr>
         <tr>
           
            </tr>
            <tr style="border: none;">
           <td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;font"><b>Project's Kick Off
      </b>     </td><td style="border: none;"></td><td style="border: none;"></td><td style="background:#BFBFBF"><%= resultset1.getString("audit_start_date")%></td>
            </tr>
            <tr style="border: none;">
           <td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;"></td><td style="border: none;font"><b>Client
      </b>     </td><td style="border: none;"></td><td style="border: none;"></td><td style="background:#BFBFBF"><%= resultset1.getString("Name_of_client")%></td>
            </tr>
            <tr>
           
            </tr>
            <tr>
           
            </tr>
     <% } %>
            <thead >
                          
                              
                          <tr style="background:#00008B;color:white" >
                          <th >Sr. No.</th>
                        <th >Particulars of data requirement
</th>
                        <th >Department/Requirement Categorization
</th>
                        <th >Period
</th>
                        <th>Type of Request (IDR/ADR)
</th>
                        <th>Status
</th>
                        <th>Date of Request
</th>
                        <th>Expected date of Receipt
</th>
                        <th>Actual date of Receipt
</th>
                        <th>Delay (Days)</th></tr>
                        </thead>
        
            
              

        <tbody>
         <%
         response.setContentType("application/vmd.ms-excel");
         
         response.setHeader("Content-Disposition","inline;filename=IDR&ADR.xls");
         
        
       while(resultset2.next()){ %>
                   
                        
                         <tr>
                              <td><%=i%></td>
                             <td><%= resultset2.getString("data")%></td>
                            <td><%= resultset2.getString("Process")%></td>
                            <td><%= resultset2.getString("period")%></td>
                            <td><%= resultset2.getString("requesttype")%></td>
                            
                              <td><%= resultset2.getString("status")%></td>
                            
                              <td><%= resultset2.getDate("RD")%></td>
                              <td><%= resultset2.getDate("ED")%></td>
                            <td><%= resultset2.getDate("AD")%></td>
                            <td><%= resultset2.getString("delay")%></td>
                            </tr>
                        
                        
                        
                        
                               <%i++; } 
       
                                                                            }
   catch(Exception e)
   {
        out.println("No Data");
   }
   

%>

            
          
        </tbody>
    </table>
<%--        <%
response.setStatus(301);
response.setHeader("Location", "Risk_And_Controls.jsp?id="+request.getParameter("idrid")+"&objid="+request.getParameter("objid"));
response.setHeader("Connection", "close");
%>  --%>
</body>
</html>