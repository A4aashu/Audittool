package com.tool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import com.tool.bean.LoginBean;
import com.tool.config.Dbconfig;

public class LoginDao {
	
	public LoginBean authorizeLogin(LoginBean bean)
	{
		String email = bean.getEmail();
		String password = bean.getPassword();
		String hashPassword = bean.getHashPassword();
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM tbl_user "
					+ "WHERE user_email=? AND user_password=? AND status=1");
			
			pstmt.setString(1, email);
			pstmt.setString(2, hashPassword);
			
			ResultSet rs = pstmt.executeQuery();
			boolean more = rs.next();
			if (!more) {	        	
	        	   System.out.println("Sorry, you are not a registered user! Please sign up first");
	               bean.setValid(false);	       	       
	        }
			else
			{
				String dbemail 	= rs.getString("user_email");
				String dbpassword = rs.getString("user_password");
				Blob blob = rs.getBlob("profilephoto");
				 InputStream inputStream = blob.getBinaryStream();
	                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	                byte[] buffer = new byte[4096];
	                int bytesRead = -1;
	                 
	                while ((bytesRead = inputStream.read(buffer)) != -1) {
	                    outputStream.write(buffer, 0, bytesRead);                  
	                }
	                 
	                byte[] imageBytes = outputStream.toByteArray();
	                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
	                 
	                 
	                inputStream.close();
	                outputStream.close();
	                bean.setBase64Image(base64Image);
				bean.setEmail(dbemail);
				bean.setPassword(dbpassword);
				bean.setFullname(rs.getString("user_fullname"));
				bean.setDepartment(rs.getString("user_department"));
				bean.setDesignation(rs.getString("user_designation"));
				if(dbemail.equalsIgnoreCase(email) && dbpassword.equalsIgnoreCase(hashPassword))
				{
					bean.setValid(true);
				}
			}
		}
		catch(Exception e) 
		{
			System.out.println("LoginDao File Error"+ e);
		}
		System.out.println(bean);
		return bean;
		
	}

}
