package com.controller;
import com.bean.*;
import com.dao.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AnswerServlet
 */
public class AnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static int count=0;
	static int sum=0;
	static Map< Integer,String> hm;
	
	static {
		hm=new HashMap< Integer,String>();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		count++;
		String t=request.getParameter("hide");
		//System.out.println(count + " " +hm);
		for(int i=Integer.parseInt(t)-2;i<Integer.parseInt(t);i++)
		{
			String value=request.getParameter(Integer.toString(i));
			hm.put(i,value);
		}
        for (Map.Entry< Integer,String> me:hm.entrySet()) 
        {
            //System.out.println(me.getKey()+":"+me.getValue());  
        }
        if(Integer.parseInt(t)>=61) 
        {
            Map< Integer,Integer> h=new HashMap< Integer,Integer>();
            for (Map.Entry< Integer,String> me:hm.entrySet()) 
            {
            	String s=me.getValue();
            	String a[]=s.split("\\|");
//            	for(int i=0;i<a.length;i++)
//            	{
//            		System.out.println(i+" "+a[i]+" ");
//            	}
            	if(h.containsKey(Integer.parseInt(a[0])))
            	{
            		int temp=h.get(Integer.parseInt(a[0]));
            		temp=temp+Integer.parseInt(a[1]);
            		h.replace(Integer.parseInt(a[0]),temp);
            	}
            	else
            	{
            		h.put(Integer.parseInt(a[0]), Integer.parseInt(a[1]));
            	}
                //System.out.println(s);  
            } 
            
        	request.setAttribute("Result", h);
        	request.getRequestDispatcher("Result.jsp").forward(request, response);
        }
        else 
        {
        	response.sendRedirect("Question.jsp");
        }
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
