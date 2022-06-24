package com.tool.sendmail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.tool.config.Dbconfig;

public class EmailUtil {
	private String Name;
	private String userEmail;
	private String engagement;
	
	public EmailUtil(String userEmail,String Name,String engagement) {
		
		super();
		this.userEmail = userEmail;
		this.Name = Name;
		this.engagement = engagement;
		System.out.println("Aashu");
	}
	
	public void SendeMail()
	{
		String email = "iaacceleratorkpmg@gmail.com"; // sender email
		String password = "vvrchttmvbzaxgaw"; // sender password
		
		Properties properties = new Properties();
		
		properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        
        
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() 
        {    
            protected PasswordAuthentication getPasswordAuthentication(){
            
                return new PasswordAuthentication(email, password);
            }
        });
        
        try {
        	Connection con = Dbconfig.getConnection();
			PreparedStatement pstmt,pstmt1;
			ResultSet rs=null;
			ResultSet rs1=null;
			pstmt=con.prepareStatement("select data,ed from idr_table where status!='Received' and ED<GETDATE() and auditid=?;");
			pstmt.setString(1, Name);
			pstmt1=con.prepareStatement("select t.TotalTask, t.Completed,FORMAT((cast(t.Completed as float) / cast(t.TotalTask as float)),'P0') as CompletedPercentage from (select sum(case status when 'Received' then 1 else 0 end) as Completed,count(*) as TotalTask from IDR_Table where Auditid=?) as t;");
			pstmt1.setString(1, Name);
			rs = pstmt.executeQuery();
			rs1 = pstmt1.executeQuery();
			String text="<table border='1'><tr><td><h5>Data</h5></td><td><h5>Expected Date</h5></td></tr>";
			String percentage="";
			while(rs.next())
			{
				text=text+"<tr>"+"<td>"+rs.getString("data")+"</td>"+"<td>"+rs.getString("ed")+"</td>"+"</tr>";
			}
			while(rs1.next())
			{
				percentage=rs1.getString("CompletedPercentage");
			}
        	MimeMessage message = new MimeMessage(session);
        	message.setFrom(new InternetAddress(email));
        	message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(userEmail));
        	message.setSubject("Remainder mail for datasets | "+engagement);
            message.setContent("<p>Dear User,<br><br>Kindly note that you have only received "+percentage+" of the Datasets for "+engagement+".</p><p>The below table lays out the status for the pending datasets.</p>"+text+"</table><br></br><p>Regards<br>IA Accelerator team<br><br>Disclaimer: This is a system generated mail. Please do not reply.","text/html");
            Transport.send(message);
        	
        }catch(Exception e){
        	
        	System.out.println("SendEmail File Error"+ e);
        }
	}
	
}