package com.tool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tool.bean.LoginBean;
import com.tool.config.Dbconfig;

public class LoginDao {
	
	public String authorizeLogin(LoginBean loginBean)
	{
		String email = loginBean.getEmail();
		String password = loginBean.getPassword();
		String hashPassword = loginBean.getHashPassword();
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM tbl_user "
					+ "WHERE user_email=? AND user_password=? AND status=1");
			
			pstmt.setString(1, email);
			pstmt.setString(2, hashPassword);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				String dbemail 	= rs.getString("user_email");
				String dbpassword = rs.getString("user_password");
				loginBean.setFullname(rs.getString("user_fullname"));
				loginBean.setDepartment(rs.getString("user_department"));
				loginBean.setDesignation(rs.getString("user_designation"));
				
				if(dbemail.equalsIgnoreCase(email) && dbpassword.equalsIgnoreCase(hashPassword))
				{
					return "SUCCESS LOGIN";
				}
			}
		}
		catch(Exception e) 
		{
			System.out.println("LoginDao File Error"+ e);
		}
		
		return "WRONG EMAIL AND PASSWORD";
	}

}
