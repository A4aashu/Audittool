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
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;  

import org.apache.commons.codec.digest.DigestUtils;

import com.tool.bean.RegisterBean;
import com.tool.dao.forgotDao;


@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btn_forgot")!=null)
		{
			
			String email = request.getParameter("user_id");
			
			
			String makeHash;
			Random random = new Random();
			random.nextInt(999999);
			makeHash = DigestUtils.md5Hex(""+random);
			
			System.out.println(makeHash);
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			   LocalDateTime now = LocalDateTime.now();
			   String expiredtime=dtf.format(now);
			   System.out.println(expiredtime);
			RegisterBean registerBean = new RegisterBean();
			
		
			registerBean.setForgotemail(email);
			registerBean.setToken(makeHash);
			registerBean.setExpired(expiredtime);
			
			
			forgotDao forgotDao = new forgotDao();
			
			String str = forgotDao.RegisterUser(registerBean);
			
			PrintWriter out = response.getWriter(); 

			
			
			if(str.equals("SUCCESS")){
				out.println(
						"<html><head></head><body onload=\"alert('Thank you, Please check your inbox and rest your password')\"></body></html>");
								
								out.println("<meta http-equiv='refresh' content='1;URL=index.jsp'>");
            }
			else if(str.equals("Incorrect email")){
				out.println(
						"<html><head></head><body onload=\"alert('Sorry, Incorrect email')\"></body></html>");
                request.setAttribute("RegisterErrorMsg",str); 
                RequestDispatcher rd=request.getRequestDispatcher("forgotpass.jsp"); 
                rd.include(request, response);
            }
            else{
                
                request.setAttribute("RegisterErrorMsg",str); 
                RequestDispatcher rd=request.getRequestDispatcher("registration.jsp"); 
                rd.include(request, response);
                response.sendRedirect("registration.jsp");
            }
		}
	
	}

}
