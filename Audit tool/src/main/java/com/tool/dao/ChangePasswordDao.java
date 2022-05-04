package com.tool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tool.bean.RegisterBean;
import com.tool.config.Dbconfig;

public class ChangePasswordDao {
	
	public String RegisterUser(RegisterBean registerBean) {
		
		String email 	 = registerBean.getForgotemail();
		String password  = registerBean.getPassword();
		String token 	 = registerBean.getToken();
		
		Connection con = Dbconfig.getConnection();
		
		PreparedStatement pstmt;
		
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM tbl_user WHERE user_email=? ");
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				pstmt=con.prepareStatement("UPDATE tbl_user SET user_password=? WHERE user_email=? AND user_token=? AND DATEDIFF(minute,expiredtime,CURRENT_TIMESTAMP)<=5");
				
				pstmt.setString(1, password);
                pstmt.setString(2, email);
                pstmt.setString(3, token);
                
                int i = pstmt.executeUpdate();
                
                if(i!=0)
                {
                	return "SUCCESS";
                }
                else
                {
                	return "Incorrect token try again";
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
