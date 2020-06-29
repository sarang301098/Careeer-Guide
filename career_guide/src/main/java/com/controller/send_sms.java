package com.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
public class send_sms {
	public String sendSms() {
		try {
			// Construct data
			String apiKey = "apikey=" + "u0V2a92ec6s-545VAdHKpNjTPCZLjGf0OJpjx3uhQC";
			String message = "&message=" + "Corona virus is dangerous\nStay home stay safe! This message is from Jeet Solanki";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "919924821785";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		send_sms sendSMS=new send_sms();
		String a=sendSMS.sendSms();
		System.out.println(a);
	}

}
