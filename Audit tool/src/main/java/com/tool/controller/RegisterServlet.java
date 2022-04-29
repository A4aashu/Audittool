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
import com.tool.dao.RegisterDao;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btn_register")!=null)
		{
			String fullname = request.getParameter("input_full_name");
			String designation=request.getParameter("input_designation");
			String department=request.getParameter("input_department");
			String location=request.getParameter("input_location");
			String email = request.getParameter("input_email");
			String password = request.getParameter("input_password");
			
			String newPassword = DigestUtils.md5Hex(password);
			
			String makeHash;
			Random random = new Random();
			random.nextInt(999999);
			makeHash = DigestUtils.md5Hex(""+random);
			
			RegisterBean registerBean = new RegisterBean();
			
			registerBean.setFullname(fullname);
			registerBean.setDepartment(department);
			registerBean.setDesignation(designation);
			registerBean.setLocation(location);
			registerBean.setEmail(email);
			registerBean.setPassword(newPassword);
			registerBean.setHash(makeHash);
			
			RegisterDao registerDao = new RegisterDao();
			
			String str = registerDao.RegisterUser(registerBean);
			
			PrintWriter out = response.getWriter(); 

			
			
			if(str.equals("SUCCESS")){
				out.println(
						"<html><head></head><body onload=\"alert('Thank you, Please check your inbox and verify email')\"></body></html>");
								
								out.println("<meta http-equiv='refresh' content='1;URL=index.jsp'>");
            }
			else if(str.equals("sorry email already exist")){
                
                request.setAttribute("RegisterErrorMsg",str); 
                RequestDispatcher rd=request.getRequestDispatcher("registration.jsp"); 
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
