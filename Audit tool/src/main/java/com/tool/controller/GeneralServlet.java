package com.tool.controller;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;

import com.tool.bean.LoginBean;
import com.tool.config.Dbconfig;

import com.tool.bean.*;
import com.tool.dao.RegisterDao;
// Servlet Name 
@WebServlet("/GeneralServlet") 
public class GeneralServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		try { 
			Connection connection = Dbconfig.getConnection();
			AuditBean auditbean=new AuditBean();
			
			if(request.getParameter("btn_general")!=null)
			{
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("audit_start_date"));
			Date datev = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("audit_end_date"));
			 auditbean.setAudit_start_date(date);
			 auditbean.setAudit_end_date(datev);
			 auditbean.setName_of_client(request.getParameter("client_name"));
			 auditbean.setEngagement_name(request.getParameter("engagement_name"));
			 auditbean.setMegaProcess(request.getParameter("megaprocess"));
			 auditbean.setDepartment(request.getParameter("department"));
			 auditbean.setProcess(request.getParameter("process"));
			 auditbean.setAudit_background(request.getParameter("input_audit_background"));
			 HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUsers",auditbean);
			 response.sendRedirect("Projectobjective.jsp");
			
			}
			if(request.getParameter("info1")!=null)
			{
			 auditbean.setMegaprocessid(request.getParameter("info1"));
			 System.out.println(request.getParameter("info1"));
			 HttpSession session = request.getSession(true);
			 session.setAttribute("megaprocess",auditbean);
			 response.sendRedirect("Projectobjective.jsp");
			
			}
			if(request.getParameter("infoo1")!=null)
			{
			 auditbean.setCategorizationid(request.getParameter("infoo1"));
			 System.out.println(request.getParameter("infoo1"));
			 HttpSession session = request.getSession(true);
			 session.setAttribute("categorization",auditbean);
			 response.sendRedirect("Projectobjective.jsp");
			
			}
			if(request.getParameter("infooo1")!=null)
			{
			 auditbean.setProcessid(request.getParameter("infooo1"));
			 System.out.println(request.getParameter("infooo1"));
			 HttpSession session = request.getSession(true);
			 session.setAttribute("process",auditbean);
			 response.sendRedirect("Projectobjective.jsp");
			
			}
			
			if(request.getParameter("infoooo1")!=null)
			{
			 auditbean.setObjectiveid(request.getParameter("infoooo1"));
			 System.out.println(request.getParameter("infoooo1"));
			 HttpSession session = request.getSession(true);
			 session.setAttribute("projectobjective",auditbean);
			 response.sendRedirect("auditplan.jsp");
			
			}
			
			if(request.getParameter("btn_auditplan")!=null)
			{
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("auditannounce"));
			Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("irauditscrop"));
			Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("discussiondate"));
			Date date3 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("walktrhoughsession"));
			Date date4 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("datarequest"));
			Date date5 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("aqm"));
			Date date6= new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("draftreport"));
			Date date7 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("exitmeeting"));
			Date date8= new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("releasefinalreport"));
			 auditbean.setAuditannounce(date);
			 auditbean.setIrauditscrop(date1);
			 auditbean.setDiscussiondate(date2);
			 auditbean.setWalktrhoughsession(date3);
			 auditbean.setDatarequest(date4);
			 auditbean.setAqm(date5);
			 auditbean.setDraftreport(date6);
			 auditbean.setExitmeeting(date7);
			 auditbean.setReleasefinalreport(date8);
			 
			 HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser1",auditbean);
			 response.sendRedirect("team_structure.jsp");
			
			}
			if(request.getParameter("epname")!=null)
			{
				auditbean.setEpname(request.getParameter("Epname"));
				auditbean.setEpdes(request.getParameter("Epdes"));
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser2",auditbean);

			 response.sendRedirect("team_structure.jsp");
			
			}
			if(request.getParameter("edname")!=null)
			{
				auditbean.setEdname(request.getParameter("Edname"));
				auditbean.setEddes(request.getParameter("Eddes"));
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser3",auditbean);
		
			 response.sendRedirect("team_structure.jsp");
			
			}
			if(request.getParameter("emname")!=null)
			{
				auditbean.setEmname1(request.getParameter("Emname1"));
				auditbean.setEmdes1(request.getParameter("Emdes1"));
				 auditbean.setEmname2(request.getParameter("Emname2"));
				 auditbean.setEmdes2(request.getParameter("Emdes2"));
				 HttpSession session = request.getSession(true);
					session.setAttribute("currentSessionUser4",auditbean);
		
			 response.sendRedirect("team_structure.jsp");
			
			}
			if(request.getParameter("etname")!=null)
			{
				auditbean.setEtname1(request.getParameter("Tmname"));
				auditbean.setEtdes1(request.getParameter("Tmdes"));
				auditbean.setEtname2(request.getParameter("Tmname1"));
				auditbean.setEtdes2(request.getParameter("Tmdes1"));
				auditbean.setEtname3(request.getParameter("Tmname2"));
				auditbean.setEtdes3(request.getParameter("Tmdes2"));
				auditbean.setEtname4(request.getParameter("Tmname3"));
				auditbean.setEtdes4(request.getParameter("Tmdes3"));
				 HttpSession session = request.getSession(true);
				 session.setAttribute("currentSessionUser5",auditbean);
				 response.sendRedirect("team_structure.jsp");
			
			}
			if(request.getParameter("submitbutton")!=null)
			{    
				 response.sendRedirect("output.jsp");
			}
			if(request.getParameter("dataid")!=null)
			{    
				String dataid=request.getParameter("dataid");
				String id=request.getParameter("auditid");
				String objid=request.getParameter("objid");
				String client=request.getParameter("c");
				
				String review=request.getParameter("r");
				String epname=request.getParameter("e");
				String controlriskid=request.getParameter("controlriskid");
				System.out.println(controlriskid);
				HttpSession session1 = request.getSession(true);
				HttpSession session2 = request.getSession(true);
				HttpSession session3 = request.getSession(true);
				HttpSession session4 = request.getSession(true);
				 session1.setAttribute("controlriskid",controlriskid);
				 session1.setAttribute("auditid",id);
				 session2.setAttribute("client",client);
				 session3.setAttribute("review",review);
				 session4.setAttribute("epname",epname);
				 System.out.println(client);
				 System.out.println(review);
				 System.out.println(epname);
				 response.sendRedirect("DR1.jsp?id="+id+"&dataid="+dataid+"&objid="+objid);
				 
			}
			if(request.getParameter("Period")!=null)
			{    
				String data[]=request.getParameterValues("data");
				String process[]=request.getParameterValues("process");
				String Period[]=request.getParameterValues("Period");
				String RequestType[]=request.getParameterValues("Request-Type");
				String Status[]=request.getParameterValues("Status");
				String request_date[]=request.getParameterValues("request_date");
				String mydate[]=request.getParameterValues("mydate");
				String end_date[]=request.getParameterValues("end_date");
				String days[]=request.getParameterValues("days");
				Integer id=Integer.parseInt(request.getParameter("auditid"));
				String objid=request.getParameter("objid");
				
				
					String sqlQuery ="insert into IDR_TABLE values (?,?,?,?,?,?,?,?,?,?)";
					String sql = "delete from IDR_TABLE where auditid="+id;
					Date datev,datev1,datev2;
					try{
						Statement stmt = connection.createStatement();
						stmt.executeUpdate(sql);
						 
					     PreparedStatement pstmt = connection.prepareStatement(sqlQuery);
					     for(int j=0; j<data.length;j++){
					          pstmt.setInt(1,id);
					          pstmt.setString(2,data[j]);
					          pstmt.setString(3,process[j]);
					          pstmt.setString(4,Period[j]);
					          pstmt.setString(5,RequestType[j]);
					          pstmt.setString(6,Status[j]);
					          if(request_date[j]!="")
								 {
									 datev = new SimpleDateFormat("yyyy-MM-dd").parse(request_date[j]);
									 pstmt.setDate(7, new java.sql.Date(datev.getTime()));
								 }
								 else {
									 datev=null;
									 pstmt.setDate(7,null);
								 }
					          if(mydate[j]!="")
								 {
									 datev1 = new SimpleDateFormat("yyyy-MM-dd").parse(mydate[j]);
									 pstmt.setDate(8, new java.sql.Date(datev1.getTime()));
								 }
								 else {
									 datev1=null;
									 pstmt.setDate(8,null);
								 }
					          if(end_date[j]!="")
								 {
									 datev2 = new SimpleDateFormat("yyyy-MM-dd").parse(end_date[j]);
									 pstmt.setDate(9, new java.sql.Date(datev2.getTime()));
								 }
								 else {
									 datev2=null;
									 pstmt.setDate(9,null);
								 }
					         if(days[j]!="")
							 {
								
								 pstmt.setString(10, days[j]);
							 }
							 else {
								 pstmt.setString(10, null);
							 }
					         
					          pstmt.addBatch();
					     }
					     int[] result = pstmt.executeBatch();
					     System.out.println("The number of rows inserted: "+ result.length);
					     connection.commit();
					}catch(Exception e){
					     e.printStackTrace();
					} finally{
					     
					if(connection!=null)
					     connection.close();
					}
					response.sendRedirect("Risk_And_Controls.jsp?id="+id+"&dataid="+"&objid="+objid);
				}
			if(request.getParameter("controlriskid")!=null)
			{    
				String dataid=request.getParameter("controlriskid");
				System.out.println("aas");
				System.out.println(dataid);
				String id=request.getParameter("auditid");
				System.out.println(id);
				String sql="update audits set controlriskid='"+dataid+"' where Initiative_id="+id;
				try{
					Statement stmt = connection.createStatement();
					stmt.executeUpdate(sql);
				}
				catch (Exception e) { 
					e.printStackTrace(); 
				} 
				response.sendRedirect("MeetingTracker.jsp");
			}
			
			
			
			
			
			
			
			
			if(request.getParameter("meetingname")!=null)
			{    
				String meetingname[]=request.getParameterValues("meetingname");
				String emd[]=request.getParameterValues("emd");
				String amd[]=request.getParameterValues("amd");
				String mom[]=request.getParameterValues("mom");
				String comments[]=request.getParameterValues("comments");
				Integer id=Integer.parseInt(request.getParameter("auditid"));;
				
					String sqlQuery ="insert into Audit_Meetings values (?,?,?,?,?,?)";
					String sql = "delete from Audit_Meetings where audit_id="+id;
					Date datev,datev1;
					try{
						Statement stmt = connection.createStatement();
						stmt.executeUpdate(sql);
						 
					     PreparedStatement pstmt = connection.prepareStatement(sqlQuery);
					     for(int j=0; j<meetingname.length;j++){
					          pstmt.setInt(1,id);
					          pstmt.setString(2,meetingname[j]);
					          if(emd[j]!="")
								 {
									 datev = new SimpleDateFormat("yyyy-MM-dd").parse(emd[j]);
									 pstmt.setDate(3, new java.sql.Date(datev.getTime()));
								 }
								 else {
									 datev=null;
									 pstmt.setDate(3,null);
								 }
					          if(amd[j]!="")
								 {
									 datev1 = new SimpleDateFormat("yyyy-MM-dd").parse(amd[j]);
									 pstmt.setDate(4, new java.sql.Date(datev1.getTime()));
								 }
								 else {
									 datev1=null;
									 pstmt.setDate(4,null);
								 }
					          pstmt.setString(5,mom[j]);
					          pstmt.setString(6,comments[j]);
					        
					          pstmt.addBatch();
					     }
					     int[] result = pstmt.executeBatch();
					     System.out.println("The number of rows inserted: "+ result.length);
					     connection.commit();
					}catch(Exception e){
					     e.printStackTrace();
					} finally{
					     
					if(connection!=null)
					     connection.close();
					}
					response.sendRedirect("clientDetails.jsp");
				}
			
			
			
			
			if(request.getParameter("country")!=null)
			{    
				String country[]=request.getParameterValues("country");
				String spoc_name[]=request.getParameterValues("spoc_name");
				String designation[]=request.getParameterValues("designation");
				String department[]=request.getParameterValues("department");
				String email[]=request.getParameterValues("email");
				String contact[]=request.getParameterValues("contact");
				String rcountry[]=request.getParameterValues("rcountry");
				String reportingto[]=request.getParameterValues("reportingto");
				String rdesignation[]=request.getParameterValues("rdesignation");
				String rdepartment[]=request.getParameterValues("rdepartment");
				String remail[]=request.getParameterValues("remail");
				String rcontact[]=request.getParameterValues("rcontact");
				Integer id=Integer.parseInt(request.getParameter("auditid"));
				
					String sqlQuery ="insert into contactdetails values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
					String sql = "delete from contactdetails where auditid="+id;
					
					try{
						Statement stmt = connection.createStatement();
						stmt.executeUpdate(sql);
						 
					     PreparedStatement pstmt = connection.prepareStatement(sqlQuery);
					     for(int j=0; j<country.length;j++){
					          pstmt.setInt(1,id);
					          pstmt.setString(2,country[j]);
					          pstmt.setString(3,spoc_name[j]);
					          pstmt.setString(4,designation[j]);
					          pstmt.setString(5,department[j]);
					          pstmt.setString(6,email[j]);
					          pstmt.setString(7,contact[j]);
					          pstmt.setString(8,rcountry[j]);
					          pstmt.setString(9,reportingto[j]);
					          pstmt.setString(10,rdesignation[j]);
					          pstmt.setString(11,rdepartment[j]);
					          pstmt.setString(12,remail[j]);
					          pstmt.setString(13,rcontact[j]);
					        
					          pstmt.addBatch();
					     }
					     int[] result = pstmt.executeBatch();
					     System.out.println("The number of rows inserted: "+ result.length);
					     connection.commit();
					}catch(Exception e){
					     e.printStackTrace();
					} finally{
					     
					if(connection!=null)
					     connection.close();
					}
					response.sendRedirect("myAudits.jsp");
				}
			
			
			
			
			
			
			
			
			
			
				
			
				 
			
			
			
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 

