package com.controller;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.rest.api.v2010.account.MessageCreator;
import com.twilio.type.PhoneNumber;
public class send_whatsapp {
	public static final String ACCOUNT_SID = "AC336db38626c9fc3acf99660b372a8b33";
	   public static final String AUTH_TOKEN = "e3158744a4dd2a364e07736eee0155c0";
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
	    Message message = Message.creator(new com.twilio.type.PhoneNumber("whatsapp:+917623029707"),new com.twilio.type.PhoneNumber("whatsapp:+19097265325"),"Hello from your friendly neighborhood Java application!").create();
	    System.out.println("Message sent!!!");
	   	}
}
