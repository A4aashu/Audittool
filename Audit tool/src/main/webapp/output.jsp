<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
	<%@ page language="java" import="com.tool.bean.AuditBean"%>
	<%@ page language="java" import="com.tool.config.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IA Accelerator</title>
</head>
<body>


    <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
    <%AuditBean currentUsers = ((AuditBean) (session.getAttribute("currentSessionUsers")));%>
    <%AuditBean currentUser1 = ((AuditBean) (session.getAttribute("currentSessionUser1")));%>
    <%AuditBean currentUser2 = ((AuditBean) (session.getAttribute("currentSessionUser2")));%>
    <%AuditBean currentUser3 = ((AuditBean) (session.getAttribute("currentSessionUser3")));%>
    <%AuditBean currentUser4 = ((AuditBean) (session.getAttribute("currentSessionUser4")));%>
    <%AuditBean currentUser5 = ((AuditBean) (session.getAttribute("currentSessionUser5")));%>
     <%AuditBean currentUserss = ((AuditBean) (session.getAttribute("megaprocess")));%>
     <%AuditBean currentUserss1 = ((AuditBean) (session.getAttribute("categorization")));%>
     <%AuditBean currentUserss2 = ((AuditBean) (session.getAttribute("process")));%>
     <%AuditBean currentUserss3 = ((AuditBean) (session.getAttribute("projectobjective")));%>

    <%
                                        try{
                                          
                                          Connection connection=Dbconfig.getConnection();
                                          PreparedStatement st = connection .prepareStatement("insert into Audits(Name_of_client,Engagement_name,MegaProcess,Department,Audit_start_date,Audit_end_date,Audit_background,Process,Auditannounce,irauditscope,discussiondate,walkthroughsession,datarequest,aqm,draftreport,exitmeeting,releasefinalreport,epname,edname,emname1,emname2,etname1,etname2,etname3,etname4,epdes,eddes,emdes1,emdes2,etdes1,etdes2,etdes3,etdes4,epemail,edemail,ememail1,ememail2,etemail,etemail1,etemail2,etemail3,createdby,megaprocessid,categorizationid,processid,objectiveid) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS); 
                                          
                                          st.setString(1,currentUsers.getName_of_client());
                                          st.setString(2,currentUsers.getEngagement_name());
                                          st.setString(3,currentUsers.getMegaProcess());
                                          st.setString(43,currentUserss.getMegaprocessid());
                                          st.setString(44,currentUserss1.getCategorizationid());
                                          st.setString(45,currentUserss2.getProcessid());
                                          st.setString(46,currentUserss3.getObjectiveid());
                                          st.setString(4,currentUsers.getDepartment());
                                          st.setDate(5,new java.sql.Date(currentUsers.getAudit_start_date().getTime()));
                                          st.setDate(6,new java.sql.Date(currentUsers.getAudit_end_date().getTime()));
                                          st.setString(7,currentUsers.getAudit_background());
                                          st.setString(8,currentUsers.getProcess());
                                          st.setDate(9,new java.sql.Date(currentUser1.getAuditannounce().getTime()));
                                          st.setDate(10,new java.sql.Date(currentUser1.getIrauditscrop().getTime()));
                                          st.setDate(11,new java.sql.Date(currentUser1.getDiscussiondate().getTime()));
                                          st.setDate(12,new java.sql.Date(currentUser1.getWalktrhoughsession().getTime()));
                                          st.setDate(13,new java.sql.Date(currentUser1.getDatarequest().getTime()));
                                          st.setDate(14,new java.sql.Date(currentUser1.getAqm().getTime()));
                                          st.setDate(15,new java.sql.Date(currentUser1.getDraftreport().getTime()));
                                          st.setDate(16,new java.sql.Date(currentUser1.getExitmeeting().getTime()));
                                          st.setDate(17,new java.sql.Date(currentUser1.getReleasefinalreport().getTime()));
                                          st.setString(18,currentUser2.getEpname());
                                          st.setString(19,currentUser3.getEdname());
                                          st.setString(20,currentUser4.getEmname1());
                                          st.setString(21,currentUser4.getEmname2());
                                          st.setString(22,currentUser5.getEtname1());
                                          st.setString(23,currentUser5.getEtname2());
                                          st.setString(24,currentUser5.getEtname3());
                                          st.setString(25,currentUser5.getEtname4());
                                          st.setString(26,currentUser2.getEpdes());
                                          st.setString(27,currentUser3.getEddes());
                                          st.setString(28,currentUser4.getEmdes1());
                                          st.setString(29,currentUser4.getEmdes2());
                                          st.setString(30,currentUser5.getEtdes1());
                                          st.setString(31,currentUser5.getEtdes2());
                                          st.setString(32,currentUser5.getEtdes3());
                                          st.setString(33,currentUser5.getEtdes4());
                                          st.setString(34,currentUser2.getEpemail());
                                          st.setString(35,currentUser3.getEdemail());
                                          st.setString(36,currentUser4.getEmemail1());
                                          st.setString(37,currentUser4.getEmemail2());
                                          st.setString(38,currentUser5.getEtemail());
                                          st.setString(39,currentUser5.getEtemail1());
                                          st.setString(40,currentUser5.getEtemail2());
                                          st.setString(41,currentUser5.getEtemail3());
                                          st.setString(42,currentUser.getEmail());
                                          
                                          
                                    
                                           st.executeUpdate();
                                           
                                           ResultSet rs = st.getGeneratedKeys();
                               			int generatedKey = 0;
                               			if (rs.next()) {
                               			    generatedKey = rs.getInt(1);
                               			}
                                   PrintWriter outs = response.getWriter(); 
                                  
                                   outs.println(
                               					"<html><head></head><body onload=\"alert('Audit created successfully, your Auditid is = "+ generatedKey + "')\"></body></html>");
                               							
                                   outs.println("<meta http-equiv='refresh' content='1;URL=myAudits.jsp'>"); 
                                           
                                        }
    catch(Exception e)
    {
         out.println("wrong entry"+e);
    }
                                    %>
 

</body>
</html>