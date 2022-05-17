package com.tool.controller;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			else
			{    
				
				 response.sendRedirect("ppt.jsp");
			}
			
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 

