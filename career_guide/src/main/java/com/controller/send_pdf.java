package com.controller;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;    
import javax.mail.internet.*;
import javax.servlet.http.HttpSession;

import com.itextpdf.awt.geom.Rectangle;    
class Mailer1{  
    public static void send(String from,String password,String to,String sub,String msg){  
          //Get properties object    
          Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");    
          //get Session   
          Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication("jeetsolucky98@gmail.com","jeet7898");  
           }    
          });    
          //compose message    
          try {    
        	  Message message = new MimeMessage(session);
        	  Multipart multipart = new MimeMultipart();
              // Set From: header field of the header.
              message.setFrom(new InternetAddress(from));

              // Set To: header field of the header.
              message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

              // Set Subject: header field
              message.setSubject("Testing Subject");

              // Create the message part
              BodyPart messageBodyPart = new MimeBodyPart();

              // Now set the actual message
              messageBodyPart.setText("This is message body");

              // Create a multipar message
              

              // Set text message part
              multipart.addBodyPart(messageBodyPart);

              // Part two is attachment
                messageBodyPart = new MimeBodyPart();
              String filename = "barchart.pdf";
              DataSource source = new FileDataSource(filename);
              messageBodyPart.setDataHandler(new DataHandler(source));
              messageBodyPart.setFileName(filename);
              multipart.addBodyPart(messageBodyPart);
 
              message.setContent(multipart);

              Transport.send(message);
      
           System.out.println("askfhaksjhkj");
          } catch (MessagingException e) {throw new RuntimeException(e);}    
          
    }  
    public void sendMail(String email,String uName){
    	
    	Mailer1.send("jeetsolucky98@gmail.com","jeet7898",email,"Verification!!! ","hello "+uName+"\nyou are successful logged");  
        
    }
}  
public class send_pdf{    
 public static void main(String[] args) {    
     //from,password,to,subject,message  
     //change from, password and to
	 Mailer1 m=new Mailer1();
	 m.sendMail("jeetsolanki1805@gmail.com","B");
 }    
 
}    