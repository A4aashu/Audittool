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



@WebServlet("/IdrServlet")
public class IdrServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btn_idr")!=null)
		{
			String fullname = request.getParameter("data");
			System.out.println(fullname);
			
	}
	}
}


