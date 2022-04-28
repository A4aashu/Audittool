package com.tool.activate;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tool.config.Dbconfig;

@WebServlet("/AccountActivate")
public class AccountActivate extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("key1");
		String hash = request.getParameter("key2");
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try {
			
			pstmt=con.prepareStatement("SELECT user_email,hash_password,status FROM tbl_user WHERE user_email=? AND hash_password=? AND status='0' ");
            pstmt.setString(1, email);
            pstmt.setString(2, hash);
            ResultSet rs = pstmt.executeQuery();
            
            if(rs.next()){
                pstmt=con.prepareStatement("UPDATE tbl_user SET status='1' WHERE user_email=? AND hash_password=?");
                pstmt.setString(1, email);
                pstmt.setString(2, hash);
                int i = pstmt.executeUpdate();
                if(i==1){
                    response.sendRedirect("index.jsp");
                }
                else{
                    response.sendRedirect("registration.jsp");
                }
             }
		}
		catch(Exception e) {
			System.out.println("AccountActivate File Error"+ e);
		}
	}

}