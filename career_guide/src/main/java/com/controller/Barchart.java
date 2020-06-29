package com.controller;
import com.bean.*;
import com.dao.*;
import com.util.generate_pdf;

import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import com.controller.Answer1;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.JFreeChart;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.awt.geom.Rectangle2D;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.*;
import com.itextpdf.awt.*;
import java.awt.Font;
import java.awt.Graphics2D;
import com.itextpdf.awt.PdfGraphics2D;
import com.itextpdf.text.Rectangle;
import com.itextpdf.awt.geom.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
/**
 * Servlet implementation class Barchart
 */
public class Barchart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Barchart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(Answer1.hm);
		Map< Integer,Integer> h=new HashMap< Integer,Integer>();
        for (Map.Entry< Integer,String> me:Answer1.hm.entrySet()) 
        {
        	String s=me.getValue();
        	String a[]=s.split("\\|");
//        	for(int i=0;i<a.length;i++)
//        	{
//        		System.out.println(i+" "+a[i]+" ");
//        	}
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String objId=(String)request.getParameter("objId");
		Map< Integer,Integer> h1=(HashMap< Integer,Integer>)request.getSession().getAttribute(objId);
		System.out.println("objid:"+objId);
		System.out.println(h1);
		generate_pdf.enter(h);
//		generate_pdf.writeChartToPDF(generate_pdf.generateBarChart(h), 500, 400, "barchart1.pdf");
//		generate_pdf.writeChartToPDF(generate_pdf.generatePieChart(h), 500, 400, "piechart1.pdf");
		System.out.println("Barchart Generated!!!!!!");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
