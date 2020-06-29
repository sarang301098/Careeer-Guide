package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.MySqlConnection;
/**
 * Servlet implementation class SignupDetails
 */
public class SignupDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fName=request.getParameter("fName");
		String lName=request.getParameter("lName");
		String email=request.getParameter("email").toLowerCase();
		String password=request.getParameter("password");
		System.out.println(email);
		Connection con=MySqlConnection.getConnection();
		Statement ps;
		try {
			ps=con.createStatement();
			String sql="select * from  logindata where email='"+email+"'";
			ResultSet rs=ps.executeQuery(sql);
			RequestDispatcher rd=null;
			if(rs.next()==false)
			{
				HttpSession session=request.getSession();
				session.setAttribute("email", email);
				Mailer mailer=new Mailer();
				mailer.sendMail(email,fName);
					rd=request.getRequestDispatcher("SignupDetails.jsp");
			}
			else
			{
				String error="This email is already used";
//				request.setAttribute("error", error);
				rd=request.getRequestDispatcher("login.jsp");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}

}
