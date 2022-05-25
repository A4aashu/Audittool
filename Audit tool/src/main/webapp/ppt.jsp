<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.Date" %>
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
    <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
    <%AuditBean currentUsers = ((AuditBean) (session.getAttribute("currentSessionUsers")));%>
    <%AuditBean currentUser1 = ((AuditBean) (session.getAttribute("currentSessionUser1")));%>
    <%AuditBean currentUser2 = ((AuditBean) (session.getAttribute("currentSessionUser2")));%>
    <%AuditBean currentUser3 = ((AuditBean) (session.getAttribute("currentSessionUser3")));%>
    <%AuditBean currentUser4 = ((AuditBean) (session.getAttribute("currentSessionUser4")));%>
    <%AuditBean currentUser5 = ((AuditBean) (session.getAttribute("currentSessionUser5")));%>
<% 
DateFormat dateFormat = new SimpleDateFormat("MMMM-yyyy");
DateFormat dateFormat1 = new SimpleDateFormat("dd-MM-yyyy");
Date datestart = new java.sql.Date(currentUsers.getAudit_start_date().getTime());    
Date dateend = new java.sql.Date(currentUsers.getAudit_end_date().getTime());  
Date auditannounce=new java.sql.Date(currentUser1.getAuditannounce().getTime());
Date irauditscope=new java.sql.Date(currentUser1.getIrauditscrop().getTime());
Date discussiondate=new java.sql.Date(currentUser1.getDiscussiondate().getTime());
Date walkthroughsession=new java.sql.Date(currentUser1.getWalktrhoughsession().getTime());
Date datarequest=new java.sql.Date(currentUser1.getDatarequest().getTime());
Date aqm=new java.sql.Date(currentUser1.getAqm().getTime());
Date draftreport=new java.sql.Date(currentUser1.getDraftreport().getTime());
Date exitmeeting=new java.sql.Date(currentUser1.getExitmeeting().getTime());
Date releasefinalreport=new java.sql.Date(currentUser1.getReleasefinalreport().getTime());
String noc=currentUsers.getName_of_client();
String engname=currentUsers.getEngagement_name();
String reviewperiod = dateFormat.format(datestart)+" to "+dateFormat.format(dateend);
String monthomd=dateFormat.format(datestart);
String auditback=currentUsers.getAudit_background();
String int1="2";
String obj='\u2022'+"aashu \n\u2022 yadav";
String auditannounce1=dateFormat1.format(auditannounce);
String irauditscope1=dateFormat1.format(irauditscope);
String discussiondate1=dateFormat1.format(discussiondate);
String walkthroughsession1=dateFormat1.format(walkthroughsession);
String datarequest1=dateFormat1.format(datarequest);
String aqm1=dateFormat1.format(aqm);
String draftreport1=dateFormat1.format(draftreport);
String exitmeeting1=dateFormat1.format(exitmeeting);
String releasefinalreport1=dateFormat1.format(releasefinalreport);
String lead=currentUser2.getEpname()+" "+currentUser2.getEpdes();
String director=currentUser3.getEdname()+" "+currentUser3.getEddes();
String manager1=currentUser4.getEmname1()+" "+currentUser4.getEmdes1();
String manager2=currentUser4.getEmname2()+" "+currentUser4.getEmdes2();
String team1=currentUser5.getEtname1()+" "+currentUser5.getEtdes1();
String team2=currentUser5.getEtname2()+" "+currentUser5.getEtdes2();
String team3=currentUser5.getEtname3()+" "+currentUser5.getEtdes3();
String team4=currentUser5.getEtname4()+" "+currentUser5.getEtdes4();

ProcessBuilder builder=new ProcessBuilder("python","C:\\Users\\aashuyadav\\Downloads\\exportppt.py",noc,engname,reviewperiod,monthomd,auditback,obj,auditannounce1,irauditscope1,discussiondate1,walkthroughsession1,datarequest1,aqm1,draftreport1,exitmeeting1,releasefinalreport1,lead,director,manager1,manager2,team1,team2,team3,team4,int1);
Process p = builder.start();
        PrintWriter outs = response.getWriter(); 
        
        outs.println(
    					"<html><head></head><body onload=\"alert('Opening Meeting Deck is successfully downloaded')\"></body></html>");
    							
        
        outs.println("<meta http-equiv='refresh' content='1;URL=myAudits.jsp'>"); 
        %>
</body>
</html>