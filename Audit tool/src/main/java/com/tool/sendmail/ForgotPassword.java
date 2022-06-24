package com.tool.sendmail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ForgotPassword {
	
	private String userEmail;
	private String token;
	
	public ForgotPassword(String userEmail, String hash) {
		super();
		this.userEmail = userEmail;
		this.token = hash;
	}
	
	public void sendMail()
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
        	
        	MimeMessage message = new MimeMessage(session);
        	message.setFrom(new InternetAddress(email));
        	message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
        	message.setSubject("Password Reset");
        	String link="http://localhost:8080/Audit_tool/changepassword.jsp?key1="+userEmail+"&key2="+token;
            message.setContent("<p>Dear User,<br><br>Reset password using the below link and follow the on screen instruction.<br>This mail can be ignored in case you didn't request a password reset, this link is only available for short time.</p>Password URL:<a href="+link+">Reset your Password</a><br><br>"
            		+ "<p>Regards<br>IA Accelerator team<br><br>Disclaimer: This is a system generated mail. Please do not reply.","text/html");
            Transport.send(message);
        	
        }catch(Exception e){
        	
        	System.out.println("Forgotpassword Email File Error"+ e);
        }
	}
	
}