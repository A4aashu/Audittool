package com.tool.sendmail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	
	private String userEmail;
	private String hash;
	
	public SendEmail(String userEmail, String hash) {
		super();
		this.userEmail = userEmail;
		this.hash = hash;
	}
	
	public void sendMail()
	{
		String email = "kdsapm@gmail.com"; // sender email
		String password = "Mtsasdk@211"; // sender password
		
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
        	message.setSubject("Email Verification");
            String link="http://localhost:8080/Audit_tool/AccountActivate?key1="+userEmail+"&key2="+hash;
            message.setContent("<p>Dear User,<br>Thank you for registering with IA Accelerator. To continue, please verify by clicking the following link for<br> activation purpose:</p><a href="+link+">Verify Email</a>","text/html");
            Transport.send(message);
        	
        }catch(Exception e){
        	
        	System.out.println("SendEmail File Error"+ e);
        }
	}
	
}