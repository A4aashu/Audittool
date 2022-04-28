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
			
			LoginBean loginBean = new LoginBean();
			
			loginBean.setEmail(email);
			loginBean.setPassword(password);
			loginBean.setHashPassword(hashPassword);
			
			
			LoginDao loginDao = new LoginDao();
			
			String str = loginDao.authorizeLogin(loginBean);
			
			if(str.equals("SUCCESS LOGIN"))
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("user_login", loginBean.getEmail());
				RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("WrongLoginMsg",str);
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
		}
	}

}