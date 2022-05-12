package com.tool.controller;
import java.util.Date;
import java.io.IOException; 
import java.text.SimpleDateFormat;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 


import com.tool.bean.*;
// Servlet Name 
@WebServlet("/GeneralServlet") 
public class GeneralServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		try { 
 
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
			 
		
			 response.sendRedirect("team_structure.jsp");
			
			}
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 

