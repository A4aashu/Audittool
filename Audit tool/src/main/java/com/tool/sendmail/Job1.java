package com.tool.sendmail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import com.tool.config.Dbconfig;
import com.tool.sendmail.EmailUtil;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;


public class Job1 implements Job{ 
	
	public void execute(JobExecutionContext context) throws JobExecutionException {
		System.out.println("Job1 --->>> Time is " + new Date());
		try
		{
			Connection con = Dbconfig.getConnection();
			
			PreparedStatement pstmt;
			pstmt=con.prepareStatement("select distinct idr_table.Auditid,Engagement_name,createdby from idr_table left join audits on auditid=Initiative_id where status!='Received' and ED<GETDATE();");
			ResultSet rs = pstmt.executeQuery();
		while(rs.next())
		{
			
			 EmailUtil se = new
			 EmailUtil(rs.getString("createdby"),rs.getString("Auditid"),rs.getString("Engagement_name")); se.SendeMail();

		}
		
	}
		catch(Exception e)
		{
			System.out.println("RegisterDao File Error"+ e);
		}
		} 
}