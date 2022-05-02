package com.tool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tool.bean.RegisterBean;
import com.tool.config.Dbconfig;
import com.tool.sendmail.ForgotPassword;

public class forgotDao {
	
	public String RegisterUser(RegisterBean registerBean) {
		
		String email 	 = registerBean.getForgotemail();
		String token 	 = registerBean.getToken();
		String expired	 = registerBean.getExpired();
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try
		{
			
				pstmt=con.prepareStatement("UPDATE tbl_user SET user_token =?, expiredtime=? WHERE user_email=?;");
				
				pstmt.setString(1, token);
                pstmt.setString(2, expired);
                pstmt.setString(3, email);
              
                int i = pstmt.executeUpdate();
               
                if(i!=0)
                { 	ForgotPassword se = new ForgotPassword(email, token);
            		se.sendMail();
                	return "SUCCESS";
                }
                else
                {
                	return "Incorrect email";
                }
			
		}
		catch(Exception e)
		{
			System.out.println("Forgot Dao File Error"+ e);
		}
	
		return "error";
	}

}

