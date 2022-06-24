package com.tool.controller;
import java.util.Date;
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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.sql.Connection;
import java.sql.ResultSet;
import java.io.*;

import com.tool.bean.LoginBean;
import com.tool.config.Dbconfig;

import com.tool.bean.*;
import com.tool.dao.RegisterDao;
// Servlet Name 
@WebServlet("/ProfileServlet") 
@MultipartConfig(maxFileSize = 16177215)
public class ProfileServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		String email=request.getParameter("email");
		String designation=request.getParameter("designation");
		String department=request.getParameter("department");
		String location=request.getParameter("location");
		String phone=request.getParameter("phone");
		 InputStream inputStream = null;
		 Part filePart= request.getPart("myimg");
		 System.out.println(filePart);
     if (filePart != null) {

         // Prints out some information
         // for debugging
         System.out.println(
             filePart.getName());
         System.out.println(
             filePart.getSize());
         System.out.println(
             filePart.getContentType());

         // Obtains input stream of the upload file
         inputStream
             = filePart.getInputStream();
         System.out.println(inputStream);
     }
	
		try { 
			Connection connection = Dbconfig.getConnection();
			String x="";
			
			if(filePart.getSize()>0) {
				
				x="UPDATE tbl_user SET user_designation=?,user_department=?,user_location=?,contactno=?,profilephoto=? WHERE user_email=?";
				PreparedStatement preparedStatement = connection.prepareStatement(x);
				preparedStatement.setString(1,designation);
				preparedStatement.setString(2,department);
				preparedStatement.setString(3,location);
				preparedStatement.setString(4,phone);
				preparedStatement.setBlob(5, inputStream);
				preparedStatement.setString(6,email);
				preparedStatement.executeUpdate();
				System.out.println("with photo");
			}
			else {
				x="UPDATE tbl_user SET user_designation=?,user_department=?,user_location=?,contactno=? WHERE user_email=?";
				PreparedStatement preparedStatement = connection.prepareStatement(x);
				preparedStatement.setString(1,designation);
				preparedStatement.setString(2,department);
				preparedStatement.setString(3,location);
				preparedStatement.setString(4,phone);
				preparedStatement.setString(5,email);
				preparedStatement.executeUpdate();
				System.out.println("no photo");
			}
			
			
			
			
		
					}catch(Exception e){
					     e.printStackTrace();
					} finally{
					
					response.sendRedirect("dashboard2.jsp");
				}
			
			
			
			
			
	} 
} 

