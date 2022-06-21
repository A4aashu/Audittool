<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
	<%@ page language="java" import="com.tool.bean.AuditBean"%>
	<%@ page language="java" import="com.tool.config.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String noc,team4,engname,reviewperiod,monthomd,auditback,obj,auditannounce1,irauditscope1,discussiondate1,walkthroughsession1,datarequest1,aqm1,draftreport1,exitmeeting1,releasefinalreport1,lead,director,manager1,manager2,team1,team2,team3;
noc=team4=engname=reviewperiod=monthomd=auditback=obj=auditannounce1=irauditscope1=discussiondate1=walkthroughsession1=datarequest1=aqm1=draftreport1=exitmeeting1=releasefinalreport1=lead=director=manager1=manager2=team1=team2=team3="";

String x=request.getParameter("objectiveid");
String auditid=request.getParameter("auditid");
System.out.println(x);
System.out.println(auditid);
String delimiter = "\n\u2022 ";
String result ="", prefix = "";
Integer y=1;
try{
	
	int[] a=Arrays.stream(x.split(",")).mapToInt(Integer::parseInt).toArray();  
    StringBuilder idList = new StringBuilder();
    		for (int id : a) {
    		   if (idList.length() > 0) {
    		     idList.append(",");
    		   }
    		   idList.append(id);
    		}
    Connection connection=Dbconfig.getConnection();
    PreparedStatement psmt1=connection.prepareStatement("select ControlObjective from racm where id in ("+idList+")");
    PreparedStatement psmt2=connection.prepareStatement("select * from Audits where Initiative_id=?");
    psmt2.setString(1,auditid);
   ResultSet resultset1 =psmt1.executeQuery() ;
   ResultSet resultset2 =psmt2.executeQuery() ;
   

while(resultset1.next()){ 
	prefix = delimiter;
	 result += prefix + resultset1.getString("ControlObjective");
     		y++;								
             } 
}
catch(Exception e)
{
     out.println("Pass from the previous table to preview this");
}
try{
	 Connection connection=Dbconfig.getConnection();
	PreparedStatement psmt2=connection.prepareStatement("select * from Audits where Initiative_id=?");
    psmt2.setString(1,auditid);
   ResultSet resultset2 =psmt2.executeQuery() ;
while(resultset2.next())
{
	noc=resultset2.getString("Name_of_client");
	engname=resultset2.getString("Engagement_name");
	reviewperiod = resultset2.getString("Audit_start_date")+" to "+resultset2.getString("Audit_end_date");
	monthomd=resultset2.getString("Audit_start_date");
	auditback=resultset2.getString("Audit_background");
	auditannounce1=resultset2.getString("Auditannounce");
	irauditscope1=resultset2.getString("irauditscope");
	discussiondate1=resultset2.getString("discussiondate");
	walkthroughsession1=resultset2.getString("walkthroughsession");
	datarequest1=resultset2.getString("datarequest");
	aqm1=resultset2.getString("aqm");
	draftreport1=resultset2.getString("draftreport");
	exitmeeting1=resultset2.getString("exitmeeting");
	releasefinalreport1=resultset2.getString("releasefinalreport");
	lead=resultset2.getString("epname")+" "+resultset2.getString("epdes");
	director=resultset2.getString("edname")+" "+resultset2.getString("eddes");
	manager1=resultset2.getString("emname1")+" "+resultset2.getString("emdes1");
	manager2=resultset2.getString("emname2")+" "+resultset2.getString("emdes2");
	team1=resultset2.getString("etname1")+" "+resultset2.getString("etdes1");
	team2=resultset2.getString("etname2")+" "+resultset2.getString("etdes2");
	team3=resultset2.getString("etname3")+" "+resultset2.getString("etdes3");
	team4=resultset2.getString("etname4")+" "+resultset2.getString("etdes4");
}
}
catch(Exception e)
{
     out.println("Pass from the previous table to preview this");
}


String int11=Integer.toString(y);
String obj1=result;


	ProcessBuilder builder=new ProcessBuilder("python","C:\\Users\\aashuyadav\\Downloads\\exportppt.py",noc,engname,reviewperiod,monthomd,auditback,obj1,auditannounce1,irauditscope1,discussiondate1,walkthroughsession1,datarequest1,aqm1,draftreport1,exitmeeting1,releasefinalreport1,lead,director,manager1,manager2,team1,team2,team3,team4,int11);
	Process p = builder.start();
	        PrintWriter outs = response.getWriter(); 
	        
	        outs.println(
	    					"<html><head></head><body onload=\"alert('Opening Meeting Deck is successfully downloaded')\"></body></html>");
	    							
	        
	        outs.println("<meta http-equiv='refresh' content='1;URL=export.jsp'>"); 




        
        %>
</body>
</html>