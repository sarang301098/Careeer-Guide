package com.util;
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
import com.itextpdf.text.pdf.*;
import com.itextpdf.awt.*;
import java.awt.Font;
import java.awt.Graphics2D;

import com.itextpdf.text.Rectangle;
import com.itextpdf.awt.geom.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
public class generate_pdf {
	public static void enter(Map<Integer,Integer>map) {
		File file = new File("barchart11.pdf"); 
		writeChartToPDF(generateBarChart(), 500, 300, "barchart11.pdf");
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
		dataSet.setValue("China", 19.64);
		dataSet.setValue("India", 17.3);
		dataSet.setValue("United States", 4.54);
		dataSet.setValue("Indonesia", 3.4);
		dataSet.setValue("Brazil", 2.83);
		dataSet.setValue("Pakistan", 2.48);
		dataSet.setValue("Bangladesh", 2.38);

		JFreeChart chart = ChartFactory.createPieChart(
				"World Population by countries", dataSet, true, true, false);

		return chart;
	}

	public static JFreeChart generateBarChart() {
		DefaultCategoryDataset dataSet = new DefaultCategoryDataset();
		dataSet.setValue(791, "Population", "1750 AD");
		dataSet.setValue(978, "Population", "1800 AD");
		dataSet.setValue(1262, "Population", "1850 AD");
		dataSet.setValue(1650, "Population", "1900 AD");
		dataSet.setValue(2519, "Population", "1950 AD");
		dataSet.setValue(6070, "Population", "2000 AD");

		JFreeChart chart = ChartFactory.createBarChart(
				"World Population growth", "Year", "Population in millions",
				dataSet, PlotOrientation.VERTICAL, false, true, false);

		return chart;
	}
//	public static JFreeChart generatePieChart(Map <Integer,Integer> map) {
//		DefaultPieDataset dataSet = new DefaultPieDataset();
//		System.out.println("chart:"+map);
//		for (Map.Entry< Integer,Integer> me:map.entrySet()) 
//		{
//			int result =me.getKey();
//			int result1=me.getValue();
//			if(result==3){
//				dataSet.setValue("Application of Biology",result1);
//			}
//			if(result==7){
//				dataSet.setValue("Construction and Structures",result1);
//			}
//			if(result==12){
//				dataSet.setValue("Application of Bioprocess",result1);
//			}
//			if(result==13){
//				dataSet.setValue("Machine & Tools",result1);
//			}
//			if(result==14){
//				dataSet.setValue("Flying and Mechanics",result1);
//			}
//			if(result==2){
//				dataSet.setValue("Application of Electrical and Electronics",result1);
//			}
//			if(result==6){
//				dataSet.setValue("Natural Resources on Earth",result1);
//			}
//			if(result==8){
//				dataSet.setValue("Software design",result1);
//			}
//			if(result==10){
//				dataSet.setValue("Chemical Research & Study",result1);
//			}
//			if(result==11){
//				dataSet.setValue("Natural Resources in Water",result1);
//			}}
//		JFreeChart chart = ChartFactory.createPieChart("Engineering", dataSet, true, true, false);
//
//		return chart;
//	}
//
//	public static JFreeChart generateBarChart(Map <Integer,Integer> map) {
//		DefaultCategoryDataset dataSet = new DefaultCategoryDataset();
//		System.out.println("barchart:"+map);
//		for (Map.Entry< Integer,Integer> me:map.entrySet()) 
//		{
//			int result =me.getKey();
//
//			int result1=me.getValue();
//			if(result==3){
//				dataSet.setValue(result1, "Marks", "Application of Biology");
//			}
//			if(result==7){
//				dataSet.setValue(result1, "Marks", "Construction and Structures");
//			}
//			if(result==12){
//				dataSet.setValue(result1, "Marks","Application of Bioprocess");
//			}
//			if(result==13){
//				dataSet.setValue(result1, "Marks", "Machine & Tools");
//			}
//			if(result==14){
//				dataSet.setValue(result1, "Marks","Flying and Mechanics");
//			}
//			if(result==2){
//				dataSet.setValue(result1, "Marks","Application of Electrical and Electronics");
//			}
//			if(result==6){
//				dataSet.setValue(result1, "Marks", "Natural Resources on Earth");
//			}
//			if(result==8){
//				dataSet.setValue(result1, "Marks","Software design");
//			}
//			if(result==10){
//				dataSet.setValue(result1, "Marks", "Chemical Research & Study");
//			}
//			if(result==11){
//				dataSet.setValue(result1, "Marks", "Natural Resources in Water");
//			}}
//		
//		JFreeChart chart = ChartFactory.createBarChart("Result", "Field", "Marks",dataSet, PlotOrientation.VERTICAL, false, true, false);
//
//		return chart;
//	}
//
//public static void writeChartToPDF(JFreeChart chart, int width, int height, String fileName) {
//	PdfWriter writer = null;
//	Document document = new Document();
//
//	try {
//		writer = PdfWriter.getInstance(document, new FileOutputStream(fileName));
//		document.open();
//		PdfContentByte contentByte = writer.getDirectContent();
//		PdfTemplate template = contentByte.createTemplate(width, height);
//		Graphics2D graphics2d = template.createGraphics(width, height,new DefaultFontMapper());
//		Rectangle2D rectangle2d = new Rectangle2D.Double(0, 0, width,height);
//
//		chart.draw(graphics2d, rectangle2d);
//		
//		graphics2d.dispose();
//		contentByte.addTemplate(template, 0, 400);
//
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	document.close();
//}
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub	
//		File file = new File("barchart.pdf"); 
//        if(file.delete()) 
//        { 
//            System.out.println("File deleted successfully"); 
//        } 
//        else
//        { 
//            System.out.println("Failed to delete the file"); 
//        }
//		writeChartToPDF(generateBarChart(), 500, 400, "barchart.pdf");
//		writeChartToPDF(generatePieChart(), 500, 400, "piechart.pdf");
//	}

}
