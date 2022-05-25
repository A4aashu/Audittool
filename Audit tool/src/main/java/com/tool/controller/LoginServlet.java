package com.tool.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.tool.bean.LoginBean;
import com.tool.dao.LoginDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		if(request.getParameter("btn_login")!=null)
		{
			String email = request.getParameter("txt_email");
			String password = request.getParameter("txt_password");
			
			String hashPassword = DigestUtils.md5Hex(password);
			
			LoginBean user = new LoginBean();
			
			user.setEmail(email);
			user.setPassword(password);
			user.setHashPassword(hashPassword);
			
			
			LoginDao loginDao = new LoginDao();
			
			user = loginDao.authorizeLogin(user);
			
			if(user.isValid())
			{
				System.out.println("Done till now");
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser",user);
				System.out.println(user.getDesignation());
				if(user.getDesignation().equals("Analyst")||user.getDesignation().equals("Associate Consultant")||user.getDesignation().equals("Consultant")||user.getDesignation().equals("Assistant Manager")) {
					out.println(
    						"<html><head></head><body onload=\"alert('Your attempt to login with IA accelerator has been successful.')\"></body></html>");
    								
    								out.println("<meta http-equiv='refresh' content='1;URL=dashboard1.jsp'>");
				}
				else
				{
					out.println(
    						"<html><head></head><body onload=\"alert('Your attempt to login with IA accelerator has been successful.')\"></body></html>");
    								
    								out.println("<meta http-equiv='refresh' content='1;URL=dashboard2.jsp'>");	
				}
			}
			else
			{	
				out.println(
						"<html><head></head><body onload=\"alert('Wrong Credentials')\"></body></html>");
								
								out.println("<meta http-equiv='refresh' content='1;URL=index.jsp'>");
			}
		}
	}

}