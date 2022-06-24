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
  vertical-align:center;
  text-align:center;
  horizontal-align:center;
}
.grey {
  background-color: rgba(128,128,128,.25);
}
.red {
  background-color: rgba(255,0,0,.25);
}
.blue {
  background-color: rgba(0,0,255,.25);
}

</style>
</head>
<body>
   <%
                                                                            try{
                                                                            	String x=request.getParameter("crid");
                                                                            	

                                                                            	int[] a=Arrays.stream(x.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList = new StringBuilder();
                                                                                		for (int id : a) {
                                                                                		   if (idList.length() > 0) {
                                                                                		     idList.append(",");
                                                                                		   }
                                                                                		   idList.append(id);
                                                                                		}
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select * from racm where id in ("+idList+")");
                                                                               
                                                                                ResultSet resultset2 =psmt1.executeQuery() ;
                                                                                int i=1;
                                                                            	

                                                                                
                                                                        %>
                                                                       
  <table id="example" class="display nowrap" style="width:100%">

         <tr style="text-align:center;background-color:#00338D">
            <td colspan="3" style="width:150px">
            <h1 style="color:white;font-family:KPMG Extralight">KPMG</h1>
            </td>
            </tr>
            <tr  style="text-align:center;background-color:#005EB8"  >
            <td>
            
            </td>
             <td style="width:20px">
            </td>
             <td style="width:20px">
            </td>
             <td colspan="3" style="height:80px;width:400px">
          <p style="color:white;font-size:50px;font-family:KPMG Extralight">Risk And Control Library</p>
            </td>
            </tr>
        
            <tr>
           <td style="background-color:#470A68"></td>
           <td style="background-color:#00338D"></td>
           <td style="background-color:#00A3A1"></td>
            </tr>
         <tr>
           <td style="background-color:#470A68"></td>
           <td style="background-color:#00338D"></td>
           <td style="background-color:#00A3A1"></td>
            </tr>
            <tr>
           <td style="background-color:#470A68"></td>
           <td style="background-color:#00338D"></td>
           <td style="background-color:#00A3A1"></td>
            </tr>
             <thead >
             
              <tr  >
              <th style="background-color:#470A68"></th>
           <th style="background-color:#00338D"></th>
           <th style="background-color:#00A3A1"></th>
           <th></th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Mega Process</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Categorization</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Process</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Sub Process</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Control Objective Ref #</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Control Objective</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Risk Ref #</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Risk Description</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Control Ref#</th>
                        <th style="background:#483698;color:white;border: 1px solid black;text-align: center;vertical-align: middle;">Control Description</th></tr>
             
             </thead>
            
            


        
            
              

        <tbody>
         <%
         response.setContentType("application/vmd.ms-excel");
         
         response.setHeader("Content-Disposition","inline;filename=RACM.xls");
         while(resultset2.next()){ %>
         
         
         <tr>
         <td style="background-color:#470A68"></td>
           <td style="background-color:#00338D"></td>
           <td style="background-color:#00A3A1"></td>
           <td></td>
             <td style=" border: 1px solid black;text-align: center;vertical-align: middle;background-color:#D7D1EF"><%= resultset2.getString("MegaProcess")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;"><%= resultset2.getString("DepartmentCategorisation")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;background-color:#D7D1EF"><%= resultset2.getString("Process")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;"><%= resultset2.getString("Subprocess")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;background-color:#D7D1EF"><%= resultset2.getString("ControlobjectiveID")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;"><%= resultset2.getString("ControlObjective")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;background-color:#D7D1EF"><%= resultset2.getString("RiskID")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;"><%= resultset2.getString("Risks")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;background-color:#D7D1EF"><%= resultset2.getString("ContColID")%></td>
            <td style=" border: 1px solid black;text-align: center;vertical-align: middle;"><%= resultset2.getString("Control")%></td>
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