package com.tool.controller;

import java.io.IOException;
import java.util.Random;
import java.io.PrintWriter; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.tool.bean.RegisterBean;
import com.tool.dao.ChangePasswordDao;


@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btn_change")!=null)
		{
			String email = request.getParameter("user_id");
			String password=request.getParameter("user_password");
			String token=request.getParameter("user_token");
			
			String newPassword = DigestUtils.md5Hex(password);
			RegisterBean registerBean = new RegisterBean();
			
			registerBean.setForgotemail(email);
			registerBean.setToken(token);
			registerBean.setPassword(newPassword);
			
			ChangePasswordDao ChangePasswordDao = new ChangePasswordDao();
			
			String str = ChangePasswordDao.RegisterUser(registerBean);
			
			PrintWriter out = response.getWriter(); 

			
			
			if(str.equals("SUCCESS")){
				out.println(
						"<html><head></head><body onload=\"alert('Thank you, Password changed successfully')\"></body></html>");
								
								out.println("<meta http-equiv='refresh' content='1;URL=index.jsp'>");
            }
			
			else if(str.equals("Incorrect token try again")) {
				out.println(
						"<html><head></head><body onload=\"alert('Time out try again')\"></body></html>");
								
								out.println("<meta http-equiv='refresh' content='1;URL=forgotpass.jsp'>");
			}
            else{
                
                request.setAttribute("RegisterErrorMsg",str); 
                RequestDispatcher rd=request.getRequestDispatcher("forgotpass.jsp"); 
                rd.include(request, response);
                response.sendRedirect("forgotpass.jsp");
            }
		}
	
	}

}
