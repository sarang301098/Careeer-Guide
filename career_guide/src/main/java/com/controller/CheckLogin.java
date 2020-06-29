package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.MySqlConnection;

/**
 * Servlet implementation class CheckLogin
 */
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		String password=request.getParameter("psw");
		Connection con=MySqlConnection.getConnection();
		System.out.println(email);
		System.out.println(password);
		Statement ps;
		try {
			ps = con.createStatement();
			String sql="select * from logindata where email='"+email+"'";
			System.out.println("Executed!!");
			ResultSet rs=ps.executeQuery(sql);
			RequestDispatcher rd=null;
			if(rs.next()==false)
			{
				String error="Wrong Email or password";
				rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);	
			}
			else
			{//rd=request.getRequestDispatcher("QuestionList");//this is destination page
			response.sendRedirect("choose_stream.jsp");
			System.out.println("else");

			}
				con.close();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

		}
	}

}
