package com.util;

import org.jfree.chart.ChartUtilities;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.jfree.chart.ChartFactory; 
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

import com.itextpdf.awt.DefaultFontMapper;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;

import java.awt.*;

public class App {
	
	public static void main(String[] args) {
		File file = new File("barchart123.pdf"); 
		File file1 = new File("piechart123.pdf"); 
        
//        if(file.delete()) 
//        { 
//            System.out.println("File deleted successfully"); 
//        } 
//        else
//        { 
//            System.out.println("Failed to delete the file"); 
//        }
		writeChartToPDF(generateBarChart(), 500, 300, "barchart123.pdf");
		writeChartToPDF(generatePieChart(), 500, 400, "piechart123.pdf");
	}
	public static void writeChartToPDF(JFreeChart chart, int width, int height, String fileName) {
		PdfWriter writer = null;

		Document document = new Document();

		try {
			writer = PdfWriter.getInstance(document, new FileOutputStream(
					fileName));
			document.open();
			PdfContentByte contentByte = writer.getDirectContent();
			PdfTemplate template = contentByte.createTemplate(width, height);
			Graphics2D graphics2d = template.createGraphics(width, height,new DefaultFontMapper());
			Rectangle2D rectangle2d = new Rectangle2D.Double(0, 0, width,
					height);

			chart.draw(graphics2d, rectangle2d);
		
			
			
			graphics2d.dispose();
			contentByte.addTemplate(template, 0, 400);

		} catch (Exception e) {
			e.printStackTrace();
		}
		document.close();
	}
	public static JFreeChart generatePieChart() {
		DefaultPieDataset dataSet = new DefaultPieDataset();
		dataSet.setValue("Application of Biology", 12);
		dataSet.setValue("Construction and Structures", 10);
		dataSet.setValue("Application of Bioprocess", 3);
		dataSet.setValue("Machine & Tools", 6);
		dataSet.setValue("Flying and Mechanics",10);
		dataSet.setValue("Electrical and Electronics", 11);
		dataSet.setValue("Natural Resources on Earth", 20);
		dataSet.setValue("Software design",12);
		dataSet.setValue("Chemical Research & Study", 11);
		dataSet.setValue("Natural Resources in Water", 10);
		JFreeChart chart = ChartFactory.createPieChart(
				"Branches Vs Marks", dataSet, true, true, false);

		return chart;
	}

	public static JFreeChart generateBarChart() {
		DefaultCategoryDataset dataSet = new DefaultCategoryDataset();
		dataSet.setValue(12, "Marks", "Application of Biology");
		dataSet.setValue(15, "Marks", "Construction and Structures");
		dataSet.setValue(11, "Marks", "Application of Bioprocess");
		dataSet.setValue(16, "Marks", "Machine & Tools");
		dataSet.setValue(14, "Marks", "Flying and Mechanics");
		dataSet.setValue(15, "Marks", "Electrical and Electronics");
		dataSet.setValue(12, "Marks", "Natural Resources on Earth");
		dataSet.setValue(13, "Marks", "Software design");
		dataSet.setValue(14, "Marks", "Chemical Research & Study");
		dataSet.setValue(15, "Marks", "Natural Resources in Water");
		JFreeChart chart = ChartFactory.createBarChart(
				"Branches Vs Marks", "Field", "Marks",
				dataSet, PlotOrientation.VERTICAL, false, true, false);

		return chart;
	}
}