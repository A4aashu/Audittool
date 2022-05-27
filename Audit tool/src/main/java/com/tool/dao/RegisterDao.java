package com.tool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tool.bean.RegisterBean;
import com.tool.config.Dbconfig;
import com.tool.sendmail.SendEmail;

public class RegisterDao {
	
	public String RegisterUser(RegisterBean registerBean) {
		
		String fullname = registerBean.getFullname();
		String department  = registerBean.getDepartment();
		String email 	 = registerBean.getEmail();
		String password  = registerBean.getPassword();
		String hash 	 = registerBean.getHash();
		String designation=registerBean.getDesignation();
		String location=registerBean.getLocation();
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM tbl_user WHERE user_email=? ");
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				String checkEmail = rs.getString("user_email");
				
				if(email.equals(checkEmail))
				{
					return "sorry email already exist";
				}
			}
			else
			{
				pstmt=con.prepareStatement("INSERT INTO tbl_user(user_fullname,user_department,"
                        + "user_email,user_password,hash_password,user_designation,user_location) VALUES(?,?,?,?,?,?,?) ");
				
				pstmt.setString(1, fullname);
                pstmt.setString(2, department);
                pstmt.setString(3, email);
                pstmt.setString(4, password);
                pstmt.setString(5, hash);
                pstmt.setString(6, designation);
                pstmt.setString(7, location);
                
                int i = pstmt.executeUpdate();
                
                if(i!=0)
                {
                	SendEmail se = new SendEmail(email, hash,fullname);
                	se.sendMail();
                	return "SUCCESS";
                }
			}
		}
		catch(Exception e)
		{
			System.out.println("RegisterDao File Error"+ e);
		}
	
		return "error";
	}

}
