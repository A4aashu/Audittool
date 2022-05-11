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

			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("audit_start_date"));
			Date datev = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("audit_end_date"));
			 auditbean.setAudit_start_date(date);
			 auditbean.setAudit_end_date(datev);
			 auditbean.setName_of_client(request.getParameter("client_name"));
			 auditbean.setEngagement_name(request.getParameter("engagement_name"));
			 auditbean.setMegaProcess(request.getParameter("megaprocess"));
			 auditbean.setDepartment(request.getParameter("department"));
			 auditbean.setAudit_background(request.getParameter("input_audit_background"));
		
			 response.sendRedirect("auditplan.jsp");
			
			
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 

