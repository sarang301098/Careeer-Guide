package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import com.bean.QuestionBean;
import com.dao.QuestionDao;
import java.util.ArrayList;
import java.util.List;
/**
 * Servlet implementation class QuestionList
 */
public class QuestionList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		QuestionBean eBean = new QuestionBean();
        List<QuestionBean> listOfQuestion = new ArrayList<QuestionBean>();
        System.out.println("1");
        QuestionDao eDao = new QuestionDao();
        System.out.println("2");
        listOfQuestion = eDao.list();
        System.out.println("3"); 
        request.setAttribute("listOfQuestion", listOfQuestion);
//        response.sendRedirect("Question.jsp");
         System.out.println("ListServlet"+listOfQuestion);
         RequestDispatcher requestdispatcher=request.getRequestDispatcher("Question.jsp");
         requestdispatcher.forward(request, response);
                 
	}

}
