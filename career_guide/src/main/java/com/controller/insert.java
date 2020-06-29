package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.*;
import com.dao.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import java.sql.Connection;
import java.sql.*;
import com.util.MySqlConnection; 
/**
 * Servlet implementation class insert
 */
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		String dob=request.getParameter("dob");
		String password=request.getParameter("password");
		try{
			Connection con=MySqlConnection.getConnection();
			Statement stmt=con.createStatement();
			PreparedStatement stmt3=con.prepareStatement("Insert into logindata values(?,?,?,?,?,?,?)");
			stmt3.setString(1,firstname);
			stmt3.setString(2,lastname);
			stmt3.setString(3,username);
			stmt3.setString(4,email);
			stmt3.setString(5,phonenumber);
			stmt3.setString(6,dob);
			stmt3.setString(7,password);
			int i=stmt3.executeUpdate();
			System.out.println("Records Inserted");
			con.close();
		}
		catch(Exception e){System.out.println(e);}
		response.sendRedirect("login.jsp");
	}

}
