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
        	message.setText("Verification Link....");
            message.setText("Click Here :: "+"http://localhost:8080/Audit_tool/AccountActivate?key1="+userEmail+"&key2="+token);
            Transport.send(message);
        	
        }catch(Exception e){
        	
        	System.out.println("SendEmail File Error"+ e);
        }
	}
	
}